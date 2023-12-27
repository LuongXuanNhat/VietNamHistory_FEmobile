part of 'discover_cubit.dart';

@freezed
class DiscoverStateData with _$DiscoverStateData {
  factory DiscoverStateData({
    String? error,
    @Default(0) int success,
    @Default(StatusType.init) StatusType status,
    @Default([]) List<String>? listTag,
    ListDiscoverResponse? listDiscover,
    ListDiscoverResponse? listDiscoverOriginal,
  }) = _DiscoverStateData;
}

@freezed
class DiscoverState with _$DiscoverState {
  const factory DiscoverState.initial({DiscoverStateData? data}) = Initial;
  const factory DiscoverState.getError({DiscoverStateData? data}) = GetError;
  const factory DiscoverState.status({DiscoverStateData? data}) = Status;
  const factory DiscoverState.getListDiscover({DiscoverStateData? data}) =
      GetListDiscover;

  const factory DiscoverState.getListTag({DiscoverStateData? data}) =
      GetListTag;
  const factory DiscoverState.searchPost({DiscoverStateData? data}) =
      SearchPost;
}
