part of 'signup_cubit.dart';

@freezed
class SignupStateData with _$SignupStateData {
  const factory SignupStateData({
    @Default('') String error,
    @Default(true) bool isShowPass,
    @Default(true) bool showConfirmPass,
  }) = _SignupStateData;
}

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial({SignupStateData? data}) = Initial;
  const factory SignupState.getError({SignupStateData? data}) = GetError;
  const factory SignupState.showPass({SignupStateData? data}) = ShowPass;
  const factory SignupState.showConfirmPass({SignupStateData? data}) =
      ShowConfirmPass;
}
