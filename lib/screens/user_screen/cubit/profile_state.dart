part of 'profile_cubit.dart';

@freezed
class ProfileStateData with _$ProfileStateData {
  const factory ProfileStateData({
    String? error,
    @Default(0) int success,
    @Default(0) int gender,
    DateTime? dateOfBirth,
    File? image,
    String? urlImage,
    UserResponse? userResponse,
    DateTime? transactionDate,
  }) = _ProfileStateData;
}

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial({ProfileStateData? data}) = Initial;
  const factory ProfileState.getError({ProfileStateData? data}) = GetError;
  const factory ProfileState.success({ProfileStateData? data}) = Success;
  const factory ProfileState.getImage({ProfileStateData? data}) = GetImage;
  const factory ProfileState.userResponse({ProfileStateData? data}) = Profile;
  const factory ProfileState.gender({ProfileStateData? data}) = GetGender;
  const factory ProfileState.dateOfBirth({ProfileStateData? data}) =
      GetDateOfBirth;
  const factory ProfileState.urlImage({ProfileStateData? data}) = GetUrlImage;
  const factory ProfileState.setTransactionDate(ProfileStateData? data) =
      SetTransactionDate;
}
