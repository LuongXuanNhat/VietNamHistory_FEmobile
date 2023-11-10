part of 'report_post_cubit.dart';

@freezed
class ReportPostStateData with _$ReportPostStateData {
  const factory ReportPostStateData({
    String? error,
    @Default(0) int success,
    @Default(StatusType.init) StatusType status,
    SuccesResponse? data,
    ListReport? listReport,
  }) = _ReportPostStateData;
}

@freezed
class ReportPostState with _$ReportPostState {
  const factory ReportPostState.initial({ReportPostStateData? data}) = Initial;
  const factory ReportPostState.getError({ReportPostStateData? data}) =
      GetError;
  const factory ReportPostState.success({ReportPostStateData? data}) = Success;
  const factory ReportPostState.data({ReportPostStateData? data}) = Data;
  const factory ReportPostState.listReport({ReportPostStateData? data}) =
      ListReportState;
}
