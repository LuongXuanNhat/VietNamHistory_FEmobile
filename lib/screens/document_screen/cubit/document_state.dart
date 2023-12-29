part of 'document_cubit.dart';

@freezed
class DocumentStateData with _$DocumentStateData {
  const factory DocumentStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    ListDocumentResponse? listDocumentResponse,
    ListDocumentResponse? listDocumentResponseSearch,
  }) = _DocumentStateData;
}

@freezed
class DocumentState with _$DocumentState {
  const factory DocumentState.initial({required DocumentStateData data}) =
      Initial;
  const factory DocumentState.listDocument({required DocumentStateData data}) =
      ListDocument;
  const factory DocumentState.status({required DocumentStateData data}) =
      Status;
  const factory DocumentState.searchDocument(
      {required DocumentStateData data}) = SearchDocument;
}
