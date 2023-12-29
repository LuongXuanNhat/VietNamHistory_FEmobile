part of 'profile_user_cubit.dart';

@freezed
class ProfileUserStateData with _$ProfileUserStateData {
  const factory ProfileUserStateData({
    String? error,
    @Default(0) int success,
    String? urlImage,
    UserResponse? userResponse,
  }) = _ProfileUserStateData;
}

@freezed
class ProfileUserState with _$ProfileUserState {
  const factory ProfileUserState.initial({required ProfileUserStateData data}) =
      Initial;
  const factory ProfileUserState.getError(
      {required ProfileUserStateData data}) = GetError;
  const factory ProfileUserState.success({required ProfileUserStateData data}) =
      Success;
  const factory ProfileUserState.urlImage(
      {required ProfileUserStateData data}) = GetUrlImage;
  const factory ProfileUserState.userResponse(
      {required ProfileUserStateData data}) = Profile;
}
