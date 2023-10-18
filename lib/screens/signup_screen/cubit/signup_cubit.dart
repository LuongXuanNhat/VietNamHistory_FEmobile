import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../common/storage/app_prefs.dart';
import '../../../common/ui_helpers.dart';
import '../../../get_it.dart';
import '../../../models/user/request/register_request.dart';
import '../../../repositories/data_repository.dart';
import '../../../route_generator.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  final appPref = getIt<AppPref>();
  final dataRepository = getIt<DataRepository>();
  SignupCubit() : super(const SignupState.initial(data: SignupStateData()));

  Future<void> register(
      {required String email,
      required String password,
      required String confirmPassword}) async {
    try {
      UIHelpers.showLoading();
      if (email.isEmpty) {
        emit(SignupState.getError(
            data: state.data!.copyWith(error: 'Email không được để trống')));
      } else if (email.contains('@') == false) {
        emit(SignupState.getError(
            data: state.data!.copyWith(error: 'Yêu cầu là Email')));
      } else if (password.isEmpty) {
        emit(SignupState.getError(
            data: state.data!.copyWith(error: 'Mật khẩu không được để trống')));
      } else if (password.length < 4) {
        emit(SignupState.getError(
            data:
                state.data!.copyWith(error: 'Mật khẩu phải lớn hơn 4 kí tự')));
      } else if (confirmPassword.isEmpty) {
        emit(SignupState.getError(
            data: state.data!
                .copyWith(error: 'Mật khẩu nhập lại không được để trống')));
      } else if (password != confirmPassword) {
        emit(SignupState.getError(
            data: state.data!.copyWith(error: 'Mật khẩu không trùng khớp')));
      } else {
        final request = RegisterRequest(
            email: email, password: password, confirmPassword: confirmPassword);
        final response = await dataRepository.register(request: request);
        if (response.data!.isSuccess == true) {
          navigator!.pushNamed(RouteGenerator.homeScreen);
        }
      }
    } catch (error) {
      debugPrint('Register Error: $error');
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
