part of 'news_cubit.dart';

@freezed
class NewsStateData with _$NewsStateData {
  const factory NewsStateData({
    @Default('') String error,
    NewsResponse? newsResponse,
  }) = _NewsStateData;
}

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial({required NewsStateData data}) = Initial;
  const factory NewsState.loaded({required NewsStateData data}) = Loaded;
  const factory NewsState.error({required NewsStateData data}) = Error;
}
