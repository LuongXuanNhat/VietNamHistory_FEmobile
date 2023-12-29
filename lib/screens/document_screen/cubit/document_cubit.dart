import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../common/ui_helpers.dart';
import '../../../enums/status_type.dart';
import '../../../get_it.dart';
import '../../../models/document/response/list_document_response.dart';
import '../../../repositories/data_repository.dart';

part 'document_state.dart';
part 'document_cubit.freezed.dart';

class DocumentCubit extends Cubit<DocumentState> {
  final _dataRepository = getIt<DataRepository>();

  DocumentCubit()
      : super(const DocumentState.initial(data: DocumentStateData()));

  Future<void> getListDocument() async {
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.listDocument();
      if (response.isSuccessed == true) {
        emit(DocumentState.listDocument(
            data: DocumentStateData(
                listDocumentResponse: response,
                listDocumentResponseSearch: response)));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> searchDocument({required String searchText}) async {
    List<ResultObj> listDocumentResponse = [
      ...state.data.listDocumentResponseSearch!.resultObj!
    ];
    emit(DocumentState.status(
        data: state.data.copyWith(status: StatusType.loading)));
    if (searchText.isEmpty) {
      emit(DocumentState.listDocument(
          data: state.data.copyWith(
              listDocumentResponse:
                  ListDocumentResponse(resultObj: listDocumentResponse))));
    } else {
      final searchTEXT = searchText.toLowerCase();
      final result = listDocumentResponse
          .where((ResultObj element) =>
              element.title.toLowerCase().contains(searchTEXT))
          .toList();
      emit(DocumentState.listDocument(
          data: state.data.copyWith(
              listDocumentResponse: ListDocumentResponse(resultObj: result))));
    }
  }
}
