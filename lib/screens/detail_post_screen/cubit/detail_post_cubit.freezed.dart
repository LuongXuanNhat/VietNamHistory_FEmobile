// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_post_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailPostStateData {
  String get error => throw _privateConstructorUsedError;
  AddPostResponse? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailPostStateDataCopyWith<DetailPostStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPostStateDataCopyWith<$Res> {
  factory $DetailPostStateDataCopyWith(
          DetailPostStateData value, $Res Function(DetailPostStateData) then) =
      _$DetailPostStateDataCopyWithImpl<$Res, DetailPostStateData>;
  @useResult
  $Res call({String error, AddPostResponse? data});
}

/// @nodoc
class _$DetailPostStateDataCopyWithImpl<$Res, $Val extends DetailPostStateData>
    implements $DetailPostStateDataCopyWith<$Res> {
  _$DetailPostStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddPostResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailPostStateDataImplCopyWith<$Res>
    implements $DetailPostStateDataCopyWith<$Res> {
  factory _$$DetailPostStateDataImplCopyWith(_$DetailPostStateDataImpl value,
          $Res Function(_$DetailPostStateDataImpl) then) =
      __$$DetailPostStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, AddPostResponse? data});
}

/// @nodoc
class __$$DetailPostStateDataImplCopyWithImpl<$Res>
    extends _$DetailPostStateDataCopyWithImpl<$Res, _$DetailPostStateDataImpl>
    implements _$$DetailPostStateDataImplCopyWith<$Res> {
  __$$DetailPostStateDataImplCopyWithImpl(_$DetailPostStateDataImpl _value,
      $Res Function(_$DetailPostStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? data = freezed,
  }) {
    return _then(_$DetailPostStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddPostResponse?,
    ));
  }
}

/// @nodoc

class _$DetailPostStateDataImpl
    with DiagnosticableTreeMixin
    implements _DetailPostStateData {
  const _$DetailPostStateDataImpl({this.error = '', this.data});

  @override
  @JsonKey()
  final String error;
  @override
  final AddPostResponse? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailPostStateData(error: $error, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailPostStateData'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailPostStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailPostStateDataImplCopyWith<_$DetailPostStateDataImpl> get copyWith =>
      __$$DetailPostStateDataImplCopyWithImpl<_$DetailPostStateDataImpl>(
          this, _$identity);
}

abstract class _DetailPostStateData implements DetailPostStateData {
  const factory _DetailPostStateData(
      {final String error,
      final AddPostResponse? data}) = _$DetailPostStateDataImpl;

  @override
  String get error;
  @override
  AddPostResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$$DetailPostStateDataImplCopyWith<_$DetailPostStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailPostState {
  DetailPostStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailPostStateData data) initial,
    required TResult Function(DetailPostStateData data) getError,
    required TResult Function(DetailPostStateData data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailPostStateData data)? initial,
    TResult? Function(DetailPostStateData data)? getError,
    TResult? Function(DetailPostStateData data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailPostStateData data)? initial,
    TResult Function(DetailPostStateData data)? getError,
    TResult Function(DetailPostStateData data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetError value) getError,
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetError value)? getError,
    TResult? Function(Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetError value)? getError,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailPostStateCopyWith<DetailPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPostStateCopyWith<$Res> {
  factory $DetailPostStateCopyWith(
          DetailPostState value, $Res Function(DetailPostState) then) =
      _$DetailPostStateCopyWithImpl<$Res, DetailPostState>;
  @useResult
  $Res call({DetailPostStateData data});

  $DetailPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DetailPostStateCopyWithImpl<$Res, $Val extends DetailPostState>
    implements $DetailPostStateCopyWith<$Res> {
  _$DetailPostStateCopyWithImpl(this._value, this._then);

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
              as DetailPostStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailPostStateDataCopyWith<$Res> get data {
    return $DetailPostStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $DetailPostStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailPostStateData data});

  @override
  $DetailPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DetailPostStateCopyWithImpl<$Res, _$InitialImpl>
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
              as DetailPostStateData,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl({required this.data});

  @override
  final DetailPostStateData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailPostState.initial(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailPostState.initial'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(DetailPostStateData data) initial,
    required TResult Function(DetailPostStateData data) getError,
    required TResult Function(DetailPostStateData data) success,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailPostStateData data)? initial,
    TResult? Function(DetailPostStateData data)? getError,
    TResult? Function(DetailPostStateData data)? success,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailPostStateData data)? initial,
    TResult Function(DetailPostStateData data)? getError,
    TResult Function(DetailPostStateData data)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetError value) getError,
    required TResult Function(Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetError value)? getError,
    TResult? Function(Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetError value)? getError,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DetailPostState {
  const factory _Initial({required final DetailPostStateData data}) =
      _$InitialImpl;

  @override
  DetailPostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $DetailPostStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailPostStateData data});

  @override
  $DetailPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$DetailPostStateCopyWithImpl<$Res, _$GetErrorImpl>
    implements _$$GetErrorImplCopyWith<$Res> {
  __$$GetErrorImplCopyWithImpl(
      _$GetErrorImpl _value, $Res Function(_$GetErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetErrorImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailPostStateData,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl with DiagnosticableTreeMixin implements _GetError {
  const _$GetErrorImpl({required this.data});

  @override
  final DetailPostStateData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailPostState.getError(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailPostState.getError'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetErrorImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      __$$GetErrorImplCopyWithImpl<_$GetErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailPostStateData data) initial,
    required TResult Function(DetailPostStateData data) getError,
    required TResult Function(DetailPostStateData data) success,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailPostStateData data)? initial,
    TResult? Function(DetailPostStateData data)? getError,
    TResult? Function(DetailPostStateData data)? success,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailPostStateData data)? initial,
    TResult Function(DetailPostStateData data)? getError,
    TResult Function(DetailPostStateData data)? success,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetError value) getError,
    required TResult Function(Success value) success,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetError value)? getError,
    TResult? Function(Success value)? success,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetError value)? getError,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class _GetError implements DetailPostState {
  const factory _GetError({required final DetailPostStateData data}) =
      _$GetErrorImpl;

  @override
  DetailPostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $DetailPostStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailPostStateData data});

  @override
  $DetailPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$DetailPostStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailPostStateData,
    ));
  }
}

/// @nodoc

class _$SuccessImpl with DiagnosticableTreeMixin implements Success {
  const _$SuccessImpl({required this.data});

  @override
  final DetailPostStateData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailPostState.success(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailPostState.success'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailPostStateData data) initial,
    required TResult Function(DetailPostStateData data) getError,
    required TResult Function(DetailPostStateData data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailPostStateData data)? initial,
    TResult? Function(DetailPostStateData data)? getError,
    TResult? Function(DetailPostStateData data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailPostStateData data)? initial,
    TResult Function(DetailPostStateData data)? getError,
    TResult Function(DetailPostStateData data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetError value) getError,
    required TResult Function(Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetError value)? getError,
    TResult? Function(Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetError value)? getError,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements DetailPostState {
  const factory Success({required final DetailPostStateData data}) =
      _$SuccessImpl;

  @override
  DetailPostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
