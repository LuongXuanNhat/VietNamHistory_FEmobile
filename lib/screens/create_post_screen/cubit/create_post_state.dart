part of 'create_post_cubit.dart';

@freezed
class CreatePostStateData with _$CreatePostStateData {
  const factory CreatePostStateData({
    String? error,
    @Default(0) int success,
    @Default(StatusType.init) StatusType status,
    File? image,
    @Default([]) List<TopicItem> listTopic,
  }) = _CreatePostStateData;
}

@freezed
class CreatePostState with _$CreatePostState {
  const factory CreatePostState.initial({CreatePostStateData? data}) = Initial;
  const factory CreatePostState.getError({CreatePostStateData? data}) =
      GetError;
  const factory CreatePostState.success({CreatePostStateData? data}) = Success;

  const factory CreatePostState.status({CreatePostStateData? data}) = Status;
  const factory CreatePostState.getImage({CreatePostStateData? data}) =
      GetImage;
  const factory CreatePostState.getListTopic({CreatePostStateData? data}) =
      GetListTopic;
}
