// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DocumentStateData {
  String get error => throw _privateConstructorUsedError;
  ListDocumentResponse? get listDocumentResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentStateDataCopyWith<DocumentStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentStateDataCopyWith<$Res> {
  factory $DocumentStateDataCopyWith(
          DocumentStateData value, $Res Function(DocumentStateData) then) =
      _$DocumentStateDataCopyWithImpl<$Res, DocumentStateData>;
  @useResult
  $Res call({String error, ListDocumentResponse? listDocumentResponse});
}

/// @nodoc
class _$DocumentStateDataCopyWithImpl<$Res, $Val extends DocumentStateData>
    implements $DocumentStateDataCopyWith<$Res> {
  _$DocumentStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? listDocumentResponse = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      listDocumentResponse: freezed == listDocumentResponse
          ? _value.listDocumentResponse
          : listDocumentResponse // ignore: cast_nullable_to_non_nullable
              as ListDocumentResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentStateDataImplCopyWith<$Res>
    implements $DocumentStateDataCopyWith<$Res> {
  factory _$$DocumentStateDataImplCopyWith(_$DocumentStateDataImpl value,
          $Res Function(_$DocumentStateDataImpl) then) =
      __$$DocumentStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, ListDocumentResponse? listDocumentResponse});
}

/// @nodoc
class __$$DocumentStateDataImplCopyWithImpl<$Res>
    extends _$DocumentStateDataCopyWithImpl<$Res, _$DocumentStateDataImpl>
    implements _$$DocumentStateDataImplCopyWith<$Res> {
  __$$DocumentStateDataImplCopyWithImpl(_$DocumentStateDataImpl _value,
      $Res Function(_$DocumentStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? listDocumentResponse = freezed,
  }) {
    return _then(_$DocumentStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      listDocumentResponse: freezed == listDocumentResponse
          ? _value.listDocumentResponse
          : listDocumentResponse // ignore: cast_nullable_to_non_nullable
              as ListDocumentResponse?,
    ));
  }
}

/// @nodoc

class _$DocumentStateDataImpl implements _DocumentStateData {
  const _$DocumentStateDataImpl({this.error = '', this.listDocumentResponse});

  @override
  @JsonKey()
  final String error;
  @override
  final ListDocumentResponse? listDocumentResponse;

  @override
  String toString() {
    return 'DocumentStateData(error: $error, listDocumentResponse: $listDocumentResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.listDocumentResponse, listDocumentResponse) ||
                other.listDocumentResponse == listDocumentResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, listDocumentResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentStateDataImplCopyWith<_$DocumentStateDataImpl> get copyWith =>
      __$$DocumentStateDataImplCopyWithImpl<_$DocumentStateDataImpl>(
          this, _$identity);
}

abstract class _DocumentStateData implements DocumentStateData {
  const factory _DocumentStateData(
          {final String error,
          final ListDocumentResponse? listDocumentResponse}) =
      _$DocumentStateDataImpl;

  @override
  String get error;
  @override
  ListDocumentResponse? get listDocumentResponse;
  @override
  @JsonKey(ignore: true)
  _$$DocumentStateDataImplCopyWith<_$DocumentStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DocumentState {
  DocumentStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentStateData data) initial,
    required TResult Function(DocumentStateData data) listDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentStateData data)? initial,
    TResult? Function(DocumentStateData data)? listDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentStateData data)? initial,
    TResult Function(DocumentStateData data)? listDocument,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ListDocument value) listDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ListDocument value)? listDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ListDocument value)? listDocument,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentStateCopyWith<DocumentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentStateCopyWith<$Res> {
  factory $DocumentStateCopyWith(
          DocumentState value, $Res Function(DocumentState) then) =
      _$DocumentStateCopyWithImpl<$Res, DocumentState>;
  @useResult
  $Res call({DocumentStateData data});

  $DocumentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DocumentStateCopyWithImpl<$Res, $Val extends DocumentState>
    implements $DocumentStateCopyWith<$Res> {
  _$DocumentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DocumentStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentStateDataCopyWith<$Res> get data {
    return $DocumentStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $DocumentStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DocumentStateData data});

  @override
  $DocumentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DocumentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$InitialImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DocumentStateData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({required this.data});

  @override
  final DocumentStateData data;

  @override
  String toString() {
    return 'DocumentState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentStateData data) initial,
    required TResult Function(DocumentStateData data) listDocument,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentStateData data)? initial,
    TResult? Function(DocumentStateData data)? listDocument,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentStateData data)? initial,
    TResult Function(DocumentStateData data)? listDocument,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ListDocument value) listDocument,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ListDocument value)? listDocument,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ListDocument value)? listDocument,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DocumentState {
  const factory Initial({required final DocumentStateData data}) =
      _$InitialImpl;

  @override
  DocumentStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListDocumentImplCopyWith<$Res>
    implements $DocumentStateCopyWith<$Res> {
  factory _$$ListDocumentImplCopyWith(
          _$ListDocumentImpl value, $Res Function(_$ListDocumentImpl) then) =
      __$$ListDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DocumentStateData data});

  @override
  $DocumentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ListDocumentImplCopyWithImpl<$Res>
    extends _$DocumentStateCopyWithImpl<$Res, _$ListDocumentImpl>
    implements _$$ListDocumentImplCopyWith<$Res> {
  __$$ListDocumentImplCopyWithImpl(
      _$ListDocumentImpl _value, $Res Function(_$ListDocumentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ListDocumentImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DocumentStateData,
    ));
  }
}

/// @nodoc

class _$ListDocumentImpl implements ListDocument {
  const _$ListDocumentImpl({required this.data});

  @override
  final DocumentStateData data;

  @override
  String toString() {
    return 'DocumentState.listDocument(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListDocumentImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListDocumentImplCopyWith<_$ListDocumentImpl> get copyWith =>
      __$$ListDocumentImplCopyWithImpl<_$ListDocumentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentStateData data) initial,
    required TResult Function(DocumentStateData data) listDocument,
  }) {
    return listDocument(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentStateData data)? initial,
    TResult? Function(DocumentStateData data)? listDocument,
  }) {
    return listDocument?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentStateData data)? initial,
    TResult Function(DocumentStateData data)? listDocument,
    required TResult orElse(),
  }) {
    if (listDocument != null) {
      return listDocument(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ListDocument value) listDocument,
  }) {
    return listDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ListDocument value)? listDocument,
  }) {
    return listDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ListDocument value)? listDocument,
    required TResult orElse(),
  }) {
    if (listDocument != null) {
      return listDocument(this);
    }
    return orElse();
  }
}

abstract class ListDocument implements DocumentState {
  const factory ListDocument({required final DocumentStateData data}) =
      _$ListDocumentImpl;

  @override
  DocumentStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$ListDocumentImplCopyWith<_$ListDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
