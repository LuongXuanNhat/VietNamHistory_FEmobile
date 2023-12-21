import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/ui_helpers.dart';
import '../../../../get_it.dart';
import '../../../../models/document/response/detail_document_respons.dart';
import '../../../../repositories/data_repository.dart';

part 'detail_document_state.dart';
part 'detail_document_cubit.freezed.dart';

class DetailDocumentCubit extends Cubit<DetailDocumentState> {
  final _dataRepository = getIt<DataRepository>();
  DetailDocumentCubit()
      : super(
            const DetailDocumentState.initial(data: DetailDocumentStateData()));

  Future<void> getDocById({required String idDoc}) async {
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.detailDocument(id: idDoc);
      if (response.isSuccessed == true) {
        emit(DetailDocumentState.detailDocument(
            data: DetailDocumentStateData(detailDocumentResponse: response)));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
