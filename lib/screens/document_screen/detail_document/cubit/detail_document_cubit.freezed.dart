// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_document_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailDocumentStateData {
  String get error => throw _privateConstructorUsedError;
  DetailDocumentResponse? get detailDocumentResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailDocumentStateDataCopyWith<DetailDocumentStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailDocumentStateDataCopyWith<$Res> {
  factory $DetailDocumentStateDataCopyWith(DetailDocumentStateData value,
          $Res Function(DetailDocumentStateData) then) =
      _$DetailDocumentStateDataCopyWithImpl<$Res, DetailDocumentStateData>;
  @useResult
  $Res call({String error, DetailDocumentResponse? detailDocumentResponse});
}

/// @nodoc
class _$DetailDocumentStateDataCopyWithImpl<$Res,
        $Val extends DetailDocumentStateData>
    implements $DetailDocumentStateDataCopyWith<$Res> {
  _$DetailDocumentStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? detailDocumentResponse = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      detailDocumentResponse: freezed == detailDocumentResponse
          ? _value.detailDocumentResponse
          : detailDocumentResponse // ignore: cast_nullable_to_non_nullable
              as DetailDocumentResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailDocumentStateDataImplCopyWith<$Res>
    implements $DetailDocumentStateDataCopyWith<$Res> {
  factory _$$DetailDocumentStateDataImplCopyWith(
          _$DetailDocumentStateDataImpl value,
          $Res Function(_$DetailDocumentStateDataImpl) then) =
      __$$DetailDocumentStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, DetailDocumentResponse? detailDocumentResponse});
}

/// @nodoc
class __$$DetailDocumentStateDataImplCopyWithImpl<$Res>
    extends _$DetailDocumentStateDataCopyWithImpl<$Res,
        _$DetailDocumentStateDataImpl>
    implements _$$DetailDocumentStateDataImplCopyWith<$Res> {
  __$$DetailDocumentStateDataImplCopyWithImpl(
      _$DetailDocumentStateDataImpl _value,
      $Res Function(_$DetailDocumentStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? detailDocumentResponse = freezed,
  }) {
    return _then(_$DetailDocumentStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      detailDocumentResponse: freezed == detailDocumentResponse
          ? _value.detailDocumentResponse
          : detailDocumentResponse // ignore: cast_nullable_to_non_nullable
              as DetailDocumentResponse?,
    ));
  }
}

/// @nodoc

class _$DetailDocumentStateDataImpl implements _DetailDocumentStateData {
  const _$DetailDocumentStateDataImpl(
      {this.error = '', this.detailDocumentResponse});

  @override
  @JsonKey()
  final String error;
  @override
  final DetailDocumentResponse? detailDocumentResponse;

  @override
  String toString() {
    return 'DetailDocumentStateData(error: $error, detailDocumentResponse: $detailDocumentResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailDocumentStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.detailDocumentResponse, detailDocumentResponse) ||
                other.detailDocumentResponse == detailDocumentResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, detailDocumentResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailDocumentStateDataImplCopyWith<_$DetailDocumentStateDataImpl>
      get copyWith => __$$DetailDocumentStateDataImplCopyWithImpl<
          _$DetailDocumentStateDataImpl>(this, _$identity);
}

abstract class _DetailDocumentStateData implements DetailDocumentStateData {
  const factory _DetailDocumentStateData(
          {final String error,
          final DetailDocumentResponse? detailDocumentResponse}) =
      _$DetailDocumentStateDataImpl;

  @override
  String get error;
  @override
  DetailDocumentResponse? get detailDocumentResponse;
  @override
  @JsonKey(ignore: true)
  _$$DetailDocumentStateDataImplCopyWith<_$DetailDocumentStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailDocumentState {
  DetailDocumentStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailDocumentStateData data) initial,
    required TResult Function(DetailDocumentStateData data) detailDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailDocumentStateData data)? initial,
    TResult? Function(DetailDocumentStateData data)? detailDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailDocumentStateData data)? initial,
    TResult Function(DetailDocumentStateData data)? detailDocument,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DetailDocument value) detailDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(DetailDocument value)? detailDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DetailDocument value)? detailDocument,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailDocumentStateCopyWith<DetailDocumentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailDocumentStateCopyWith<$Res> {
  factory $DetailDocumentStateCopyWith(
          DetailDocumentState value, $Res Function(DetailDocumentState) then) =
      _$DetailDocumentStateCopyWithImpl<$Res, DetailDocumentState>;
  @useResult
  $Res call({DetailDocumentStateData data});

  $DetailDocumentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DetailDocumentStateCopyWithImpl<$Res, $Val extends DetailDocumentState>
    implements $DetailDocumentStateCopyWith<$Res> {
  _$DetailDocumentStateCopyWithImpl(this._value, this._then);

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
              as DetailDocumentStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailDocumentStateDataCopyWith<$Res> get data {
    return $DetailDocumentStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $DetailDocumentStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailDocumentStateData data});

  @override
  $DetailDocumentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DetailDocumentStateCopyWithImpl<$Res, _$InitialImpl>
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
              as DetailDocumentStateData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({required this.data});

  @override
  final DetailDocumentStateData data;

  @override
  String toString() {
    return 'DetailDocumentState.initial(data: $data)';
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
    required TResult Function(DetailDocumentStateData data) initial,
    required TResult Function(DetailDocumentStateData data) detailDocument,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailDocumentStateData data)? initial,
    TResult? Function(DetailDocumentStateData data)? detailDocument,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailDocumentStateData data)? initial,
    TResult Function(DetailDocumentStateData data)? detailDocument,
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
    required TResult Function(DetailDocument value) detailDocument,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(DetailDocument value)? detailDocument,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DetailDocument value)? detailDocument,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DetailDocumentState {
  const factory Initial({required final DetailDocumentStateData data}) =
      _$InitialImpl;

  @override
  DetailDocumentStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailDocumentImplCopyWith<$Res>
    implements $DetailDocumentStateCopyWith<$Res> {
  factory _$$DetailDocumentImplCopyWith(_$DetailDocumentImpl value,
          $Res Function(_$DetailDocumentImpl) then) =
      __$$DetailDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailDocumentStateData data});

  @override
  $DetailDocumentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DetailDocumentImplCopyWithImpl<$Res>
    extends _$DetailDocumentStateCopyWithImpl<$Res, _$DetailDocumentImpl>
    implements _$$DetailDocumentImplCopyWith<$Res> {
  __$$DetailDocumentImplCopyWithImpl(
      _$DetailDocumentImpl _value, $Res Function(_$DetailDocumentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DetailDocumentImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailDocumentStateData,
    ));
  }
}

/// @nodoc

class _$DetailDocumentImpl implements DetailDocument {
  const _$DetailDocumentImpl({required this.data});

  @override
  final DetailDocumentStateData data;

  @override
  String toString() {
    return 'DetailDocumentState.detailDocument(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailDocumentImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailDocumentImplCopyWith<_$DetailDocumentImpl> get copyWith =>
      __$$DetailDocumentImplCopyWithImpl<_$DetailDocumentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailDocumentStateData data) initial,
    required TResult Function(DetailDocumentStateData data) detailDocument,
  }) {
    return detailDocument(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailDocumentStateData data)? initial,
    TResult? Function(DetailDocumentStateData data)? detailDocument,
  }) {
    return detailDocument?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailDocumentStateData data)? initial,
    TResult Function(DetailDocumentStateData data)? detailDocument,
    required TResult orElse(),
  }) {
    if (detailDocument != null) {
      return detailDocument(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DetailDocument value) detailDocument,
  }) {
    return detailDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(DetailDocument value)? detailDocument,
  }) {
    return detailDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DetailDocument value)? detailDocument,
    required TResult orElse(),
  }) {
    if (detailDocument != null) {
      return detailDocument(this);
    }
    return orElse();
  }
}

abstract class DetailDocument implements DetailDocumentState {
  const factory DetailDocument({required final DetailDocumentStateData data}) =
      _$DetailDocumentImpl;

  @override
  DetailDocumentStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$DetailDocumentImplCopyWith<_$DetailDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
