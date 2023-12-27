import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import '../../../common/ui_helpers.dart';
import '../../../models/user/request/reset_password_request.dart';
import '../../../models/user/response/send_email.dart';

import '../../../get_it.dart';
import '../../../models/succes/response/success_response.dart';

import '../../../models/user/response/confirm_email.dart';
import '../../../repositories/data_repository.dart';
import '../../../route_generator.dart';

part 'forgot_pass_state.dart';
part 'forgot_pass_cubit.freezed.dart';

class ForgotPassCubit extends Cubit<ForgotPassState> {
  final _dataRepository = getIt<DataRepository>();
  ForgotPassCubit()
      : super(const ForgotPassState.initial(data: ForgotPassStateData()));

  Future<void> sendEmail({required String email}) async {
    final response = await _dataRepository.forgotPassword(email: email);
    if (response.isSuccessed == true) {
      navigator!.pushNamed(RouteGenerator.otpVerifyScreen, arguments: {
        'otp': response.resultObj!.password,
        'email': email,
      });
    } else {
      UIHelpers.showSnackBar(message: 'Email chưa được đăng ký tài khoản');
    }
  }

  Future<void> confirmEmail({required String email}) async {
    try {
      final response = await _dataRepository.confirmCode(email: email);
      if (response.isSuccessed == true) {
        emit(ForgotPassState.confirmEmail(
            data: ForgotPassStateData(confirmEmail: response)));
        navigator!.pushNamed(RouteGenerator.resetPassScreen, arguments: {
          'token': response.resultObj.token,
        });
        UIHelpers.showSnackBar(message: 'Xác nhận thành công');
      } else {
        UIHelpers.showSnackBar(message: 'Mã OTP không đúng');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> resetPassword(
      {required String email,
      required String password,
      required String confirmPassword,
      required String token}) async {
    if (password != confirmPassword) {
      UIHelpers.showSnackBar(message: 'Mật khẩu không trùng khớp');
      return;
    }
    try {
      final request = ResetPasswordRequest(
        email: email,
        password: password,
        token: token,
      );
      final response = await _dataRepository.resetPassword(request: request);
      if (response.isSuccessed == true) {
        emit(ForgotPassState.succes(
            data: ForgotPassStateData(succesResponse: response)));
        navigator!.pushNamed(RouteGenerator.loginScreen);
        UIHelpers.showSnackBar(message: 'Đổi mật khẩu thành công');
      } else {
        UIHelpers.showSnackBar(message: 'Đổi mật khẩu thất bại');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  void showPass(bool value) {
    emit(ForgotPassState.isShow(data: state.data.copyWith(isShow: value)));
  }
}
