part of 'discover_cubit.dart';

@freezed
class DiscoverStateData with _$DiscoverStateData {
  factory DiscoverStateData({
    String? error,
    @Default(0) int success,
    @Default(StatusType.init) StatusType status,
    ListDiscoverResponse? listDiscover,
  }) = _DiscoverStateData;
}

@freezed
class DiscoverState with _$DiscoverState {
  const factory DiscoverState.initial({DiscoverStateData? data}) = Initial;
  const factory DiscoverState.getError({DiscoverStateData? data}) = GetError;
  const factory DiscoverState.status({DiscoverStateData? data}) = Status;
  const factory DiscoverState.getListDiscover({DiscoverStateData? data}) =
      GetListDiscover;
}
