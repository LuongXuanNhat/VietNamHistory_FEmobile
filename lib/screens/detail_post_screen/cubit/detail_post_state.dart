part of 'detail_post_cubit.dart';

@freezed
class DetailPostStateData with _$DetailPostStateData {
  const factory DetailPostStateData({
    @Default('') String error,
    AddPostResponse? data,
  }) = _DetailPostStateData;
}

@freezed
class DetailPostState with _$DetailPostState {
  const factory DetailPostState.initial({
    required DetailPostStateData data,
  }) = _Initial;
  const factory DetailPostState.getError({
    required DetailPostStateData data,
  }) = _GetError;

  const factory DetailPostState.success({required DetailPostStateData data}) =
      Success;
}
