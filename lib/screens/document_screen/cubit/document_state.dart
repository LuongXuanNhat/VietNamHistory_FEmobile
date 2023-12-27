part of 'document_cubit.dart';

@freezed
class DocumentStateData with _$DocumentStateData {
  const factory DocumentStateData({
    @Default('') String error,
    ListDocumentResponse? listDocumentResponse,
  }) = _DocumentStateData;
}

@freezed
class DocumentState with _$DocumentState {
  const factory DocumentState.initial({required DocumentStateData data}) =
      Initial;
  const factory DocumentState.listDocument({required DocumentStateData data}) =
      ListDocument;
}
