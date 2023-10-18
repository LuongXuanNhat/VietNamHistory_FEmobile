part of 'login_cubit_cubit.dart';

@freezed
class LoginStateData with _$LoginStateData {
  const factory LoginStateData(
      {String? data,
      String? error,
      @Default(true) bool showPass}) = _LoginStateData;
}

@freezed
class LoginCubitState with _$LoginCubitState {
  const factory LoginCubitState.initial({LoginStateData? data}) = Initial;
  const factory LoginCubitState.getError({LoginStateData? data}) = GetError;
  const factory LoginCubitState.showPass({LoginStateData? data}) = ShowPass;
  const factory LoginCubitState.getData({LoginStateData? data}) = GetData;
}
