import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../common/storage/app_prefs.dart';
import '../../../common/ui_helpers.dart';
import '../../../get_it.dart';
import '../../../models/user/request/login_request.dart';
import '../../../repositories/data_repository.dart';

part 'login_cubit_state.dart';
part 'login_cubit_cubit.freezed.dart';

class LoginCubitCubit extends Cubit<LoginCubitState> {
  final dataRepository = getIt<DataRepository>();
  final appPrefs = getIt<AppPref>();

  LoginCubitCubit()
      : super(const LoginCubitState.initial(data: LoginStateData()));

  ///login
  void login({required String email, required String password}) async {
    try {
      UIHelpers.showLoading();
      emit(LoginCubitState.getError(data: state.data!.copyWith(error: '')));
      if (email.isEmpty) {
        emit(LoginCubitState.getError(
            data: state.data!.copyWith(error: 'Email không được để trống')));
      } else if (password.isEmpty) {
        emit(LoginCubitState.getError(
            data: state.data!.copyWith(error: 'Mật khẩu không được để trống')));
      } else {
        final request = LoginRequest(email: email, password: password);
        final response = await dataRepository.login(request: request);
        if (response.isSuccess == true) {
          emit(LoginCubitState.getError(
              data: state.data!.copyWith(error: 'Success')));
          await appPrefs.saveToken(tokenJson: response.toRawJson());

          print(response.toRawJson());
        } else {
          emit(LoginCubitState.getError(
              data: state.data!.copyWith(error: response.message)));
        }
      }
    } catch (error) {
      debugPrint('Login Error: $error');
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void showPass(bool value) {
    emit(LoginCubitState.showPass(data: state.data!.copyWith(showPass: value)));
  }
}
