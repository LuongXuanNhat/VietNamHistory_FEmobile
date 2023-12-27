import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

import '../../../common/ui_helpers.dart';
import '../../../enums/status_type.dart';
import '../../../get_it.dart';
import '../../../models/report/request/report_post_request.dart';
import '../../../models/report/response/list_report_response.dart';
import '../../../models/succes/response/success_response.dart';
import '../../../repositories/data_repository.dart';

part 'report_post_state.dart';
part 'report_post_cubit.freezed.dart';

class ReportPostCubit extends Cubit<ReportPostState> {
  final _dataRepository = getIt<DataRepository>();
  ReportPostCubit()
      : super(const ReportPostState.initial(data: ReportPostStateData()));

  Future<void> getListReport() async {
    final response = await _dataRepository.listReport();
    if (response.isSuccessed == true) {
      emit(ReportPostState.listReport(
          data: ReportPostStateData(listReport: response)));
    } else {
      emit(ReportPostState.getError(
          data: ReportPostStateData(error: response.message)));
    }
  }

  Future<void> reportPost({
    required String postId,
    required String userId,
    required String reportId,
    required String description,
    required DateTime reportDate,
    required bool checked,
  }) async {
    try {
      UIHelpers.showLoading();
      final request = ReportPostRequest(
        postId: postId,
        userId: userId,
        reportId: reportId,
        description: description,
        reportDate: reportDate,
        checked: checked,
      );
      final response = await _dataRepository.reportPost(
        request: request,
      );
      if (response.isSuccessed == true) {
        navigator!.pop();
        emit(
            ReportPostState.success(data: ReportPostStateData(data: response)));
        UIHelpers.showSnackBar(
          message: 'Báo cáo thành công',
        );
      }
    } catch (error) {
      emit(ReportPostState.getError(
          data: ReportPostStateData(error: error.toString())));
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
