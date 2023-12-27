part of 'savepost_cubit.dart';

@freezed
class SavepostStateData with _$SavepostStateData {
  const factory SavepostStateData({
    @Default('') String error,
    AddPostResponse? data,
    SuccesResponseBool? savePost,
    @Default(false) bool isSave,
    @Default(0) int numberSave,
  }) = _SavepostStateData;
}

@freezed
class SavepostState with _$SavepostState {
  const factory SavepostState.initial({required SavepostStateData data}) =
      Initial;

  const factory SavepostState.getError({required SavepostStateData data}) =
      GetError;

  const factory SavepostState.savePost({required SavepostStateData data}) =
      SavePost;

  const factory SavepostState.isSave({required SavepostStateData data}) =
      IsSave;

  const factory SavepostState.numberSave({required SavepostStateData data}) =
      NumberSave;
}
