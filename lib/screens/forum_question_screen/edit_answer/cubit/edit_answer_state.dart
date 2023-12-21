part of 'edit_answer_cubit.dart';

@freezed
class EditAnswerStateData with _$EditAnswerStateData {
  const factory EditAnswerStateData({
    @Default('') String error,
    ListAnswerResponse? listAnswerResponse,
  }) = _EditAnswerStateData;
}

@freezed
class EditAnswerState with _$EditAnswerState {
  const factory EditAnswerState.initial({required EditAnswerStateData data}) =
      Initial;
  const factory EditAnswerState.loaded({required EditAnswerStateData data}) =
      Loaded;
}
