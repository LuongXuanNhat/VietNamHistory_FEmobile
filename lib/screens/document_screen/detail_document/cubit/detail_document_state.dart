part of 'detail_document_cubit.dart';

@freezed
class DetailDocumentStateData with _$DetailDocumentStateData {
  const factory DetailDocumentStateData({
    @Default('') String error,
    DetailDocumentResponse? detailDocumentResponse,
  }) = _DetailDocumentStateData;
}

@freezed
class DetailDocumentState with _$DetailDocumentState {
  const factory DetailDocumentState.initial(
      {required DetailDocumentStateData data}) = Initial;
  const factory DetailDocumentState.detailDocument(
      {required DetailDocumentStateData data}) = DetailDocument;
}
