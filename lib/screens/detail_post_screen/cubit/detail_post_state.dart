part of 'detail_post_cubit.dart';

@freezed
class DetailPostStateData with _$DetailPostStateData {
  const factory DetailPostStateData({
    @Default('') String error,
    AddPostResponse? detailPost,
    SuccesResponseBool? likePost,
    SuccesResponseBool? savePost,
    @Default(false) bool isLike,
    @Default(false) bool isSave,
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
  const factory DetailPostState.getDetailPost({
    required DetailPostStateData data,
  }) = _GetDetailPost;

  const factory DetailPostState.likePost({
    required DetailPostStateData data,
  }) = _LikePost;
  const factory DetailPostState.isLike({
    required DetailPostStateData data,
  }) = _IsLike;

  const factory DetailPostState.savePost({
    required DetailPostStateData data,
  }) = _SavePost;

  const factory DetailPostState.isSave({
    required DetailPostStateData data,
  }) = _IsSave;
}
