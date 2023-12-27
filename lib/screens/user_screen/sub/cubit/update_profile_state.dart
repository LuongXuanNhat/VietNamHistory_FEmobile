part of 'update_profile_cubit.dart';

@freezed
class UpdateProfileStateData with _$UpdateProfileStateData {
  const factory UpdateProfileStateData({
    String? error,
    @Default(0) int success,
    @Default(0) int gender,
    DateTime? dateOfBirth,
    DateTime? transactionDate,
  }) = _UpdateProfileStateData;
}

@freezed
class UpdateProfileState with _$UpdateProfileState {
  const factory UpdateProfileState.initial({UpdateProfileStateData? data}) =
      Initial;
  const factory UpdateProfileState.getError({UpdateProfileStateData? data}) =
      GetError;
  const factory UpdateProfileState.success({UpdateProfileStateData? data}) =
      Success;
  const factory UpdateProfileState.dateOfBirth({UpdateProfileStateData? data}) =
      GetDateOfBirth;
  const factory UpdateProfileState.setTransactionDate(
      {UpdateProfileStateData? data}) = SetTransactionDate;
}
