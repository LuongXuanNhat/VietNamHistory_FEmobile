part of 'edit_post_cubit.dart';

@freezed
class EditPostStateData with _$EditPostStateData {
  const factory EditPostStateData({
    String? error,
    @Default(0) int success,
    @Default(StatusType.init) StatusType status,
    File? image,
    AddPostResponse? data,
    @Default([]) List<TopicItem> listTopic,
  }) = _EditPostStateData;
}

@freezed
class EditPostState with _$EditPostState {
  const factory EditPostState.initial({required EditPostStateData data}) =
      Initial;
  const factory EditPostState.getError({required EditPostStateData data}) =
      GetError;
  const factory EditPostState.success({required EditPostStateData data}) =
      Success;
  const factory EditPostState.status({required EditPostStateData data}) =
      Status;
  const factory EditPostState.getImage({required EditPostStateData data}) =
      GetImage;
  const factory EditPostState.getListTopic({required EditPostStateData data}) =
      GetListTopic;
  const factory EditPostState.getTopicDetail(
      {required EditPostStateData data}) = GetTopicDetail;
}
