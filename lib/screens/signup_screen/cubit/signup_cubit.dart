import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../common/storage/app_prefs.dart';
import '../../../common/ui_helpers.dart';
import '../../../get_it.dart';
import '../../../models/user/request/login_request.dart';
import '../../../models/user/request/register_request.dart';
import '../../../models/user/user_pres.dart';
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
      } else if (password.length < 6) {
        emit(SignupState.getError(
            data:
                state.data!.copyWith(error: 'Mật khẩu phải lớn hơn 6 kí tự')));
      } else if (!containsUppercase(password) ||
          !containsLowercase(password) ||
          !hasDigit(password) ||
          !hasSpecialChar(password)) {
        emit(SignupState.getError(
            data: state.data!.copyWith(
                error:
                    'Mật khẩu phải chứa ít nhất một ký tự hoa, một ký tự thường, một chữ số và một ký tự đặc biệt')));
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
        if (response.isSuccessed == true) {
          final requestLogin = LoginRequest(email: email, password: password);
          final responseLogin =
              await dataRepository.login(request: requestLogin);
          if (responseLogin.isSuccessed == true) {
            emit(SignupState.getError(
                data: state.data!.copyWith(error: 'Success')));
            await appPref.saveToken(tokenJson: responseLogin.toRawJson());
            await UserPreferences.saveUserFromToken(
                token: responseLogin.resultObj);
          } else {
            emit(SignupState.getError(
                data:
                    state.data!.copyWith(error: responseLogin.message ?? '')));
          }
        }
      }
    } catch (error) {
      debugPrint('Register Error: $error');
      UIHelpers.showSnackBar(message: error.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void showPass(bool value) {
    emit(SignupState.showPass(data: state.data!.copyWith(isShowPass: value)));
  }

  void showConfirmPass(bool value) {
    emit(SignupState.showConfirmPass(
        data: state.data!.copyWith(showConfirmPass: value)));
  }

  bool containsUppercase(String text) {
    return text.contains(RegExp(r'[A-Z]'));
  }

  bool containsLowercase(String text) {
    return text.contains(RegExp(r'[a-z]'));
  }

  bool hasDigit(String text) {
    return text.contains(RegExp(r'[0-9]'));
  }

  bool hasSpecialChar(String text) {
    return text.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'));
  }
}
