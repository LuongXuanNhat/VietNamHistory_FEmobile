part of 'edit_comment_cubit.dart';

@freezed
class EditCommentStateData with _$EditCommentStateData {
  const factory EditCommentStateData({
    @Default('') String error,
    CommentResponse? commentResponse,
  }) = _EditCommentStateData;
}

@freezed
class EditCommentState with _$EditCommentState {
  const factory EditCommentState.initial({required EditCommentStateData data}) =
      Initial;
  const factory EditCommentState.getError(
      {required EditCommentStateData data}) = GetError;
  const factory EditCommentState.loading({required EditCommentStateData data}) =
      Loading;
}
