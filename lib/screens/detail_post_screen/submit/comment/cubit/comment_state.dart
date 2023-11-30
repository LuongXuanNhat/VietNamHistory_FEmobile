part of 'comment_cubit.dart';

@freezed
class CommentStateData with _$CommentStateData {
  const factory CommentStateData({
    @Default('') String error,
    @Default([]) List<Comment> comments,
    Comment? postComment,
    @Default('') String imageUser,
    CommentResponse? data,
  }) = _CommentStateData;
}

@freezed
class CommentState with _$CommentState {
  const factory CommentState.initial({required CommentStateData data}) =
      Initial;
  const factory CommentState.getError({required CommentStateData data}) =
      GetError;
  const factory CommentState.success({required CommentStateData data}) =
      Success;

  const factory CommentState.postComment({required CommentStateData data}) =
      PostComment;

  const factory CommentState.listComment({required CommentStateData data}) =
      ListComment;

  const factory CommentState.loadImageUser({required CommentStateData data}) =
      LoadImageUser;
}
