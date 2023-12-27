import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/ui_helpers.dart';
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
            data: DocumentStateData(listDocumentResponse: response)));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
