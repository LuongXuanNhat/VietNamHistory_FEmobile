part of 'likepost_cubit.dart';

@freezed
class LikepostStateData with _$LikepostStateData {
  const factory LikepostStateData({
    @Default('') String error,
    AddPostResponse? data,
    SuccesResponseBool? likePost,
    @Default(false) bool isLike,
    @Default(0) int numberLike,
  }) = _LikepostStateData;
}

@freezed
class LikepostState with _$LikepostState {
  const factory LikepostState.initial({required LikepostStateData data}) =
      Initial;
  const factory LikepostState.getError({required LikepostStateData data}) =
      GetError;

  const factory LikepostState.likePost({required LikepostStateData data}) =
      LikePost;
  const factory LikepostState.isLike({required LikepostStateData data}) =
      IsLike;
  const factory LikepostState.success({required LikepostStateData data}) =
      Success;
  const factory LikepostState.numberLike({required LikepostStateData data}) =
      NumberLike;
}
