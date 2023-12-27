part of 'forgot_pass_cubit.dart';

@freezed
class ForgotPassStateData with _$ForgotPassStateData {
  const factory ForgotPassStateData({
    @Default('') error,
    ForgotPassSendEmail? sendEmail,
    ForgotPassConfirmEmail? confirmEmail,
    @Default(true) isShow,
    SuccesResponse? succesResponse,
  }) = _ForgotPassStateData;
}

@freezed
class ForgotPassState with _$ForgotPassState {
  const factory ForgotPassState.initial({required ForgotPassStateData data}) =
      Initial;
  const factory ForgotPassState.error({required ForgotPassStateData data}) =
      Error;
  const factory ForgotPassState.sendEmail({required ForgotPassStateData data}) =
      SendEmail;
  const factory ForgotPassState.confirmEmail(
      {required ForgotPassStateData data}) = ConfirmEmail;
  const factory ForgotPassState.succes({required ForgotPassStateData data}) =
      Succes;

  const factory ForgotPassState.isShow({required ForgotPassStateData data}) =
      IsShow;
}
