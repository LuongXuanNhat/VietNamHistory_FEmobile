// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizDetailStateData {
  String get error => throw _privateConstructorUsedError;
  DetailQuizResponse? get detailQuizResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizDetailStateDataCopyWith<QuizDetailStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizDetailStateDataCopyWith<$Res> {
  factory $QuizDetailStateDataCopyWith(
          QuizDetailStateData value, $Res Function(QuizDetailStateData) then) =
      _$QuizDetailStateDataCopyWithImpl<$Res, QuizDetailStateData>;
  @useResult
  $Res call({String error, DetailQuizResponse? detailQuizResponse});
}

/// @nodoc
class _$QuizDetailStateDataCopyWithImpl<$Res, $Val extends QuizDetailStateData>
    implements $QuizDetailStateDataCopyWith<$Res> {
  _$QuizDetailStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? detailQuizResponse = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      detailQuizResponse: freezed == detailQuizResponse
          ? _value.detailQuizResponse
          : detailQuizResponse // ignore: cast_nullable_to_non_nullable
              as DetailQuizResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizDetailStateDataImplCopyWith<$Res>
    implements $QuizDetailStateDataCopyWith<$Res> {
  factory _$$QuizDetailStateDataImplCopyWith(_$QuizDetailStateDataImpl value,
          $Res Function(_$QuizDetailStateDataImpl) then) =
      __$$QuizDetailStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, DetailQuizResponse? detailQuizResponse});
}

/// @nodoc
class __$$QuizDetailStateDataImplCopyWithImpl<$Res>
    extends _$QuizDetailStateDataCopyWithImpl<$Res, _$QuizDetailStateDataImpl>
    implements _$$QuizDetailStateDataImplCopyWith<$Res> {
  __$$QuizDetailStateDataImplCopyWithImpl(_$QuizDetailStateDataImpl _value,
      $Res Function(_$QuizDetailStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? detailQuizResponse = freezed,
  }) {
    return _then(_$QuizDetailStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      detailQuizResponse: freezed == detailQuizResponse
          ? _value.detailQuizResponse
          : detailQuizResponse // ignore: cast_nullable_to_non_nullable
              as DetailQuizResponse?,
    ));
  }
}

/// @nodoc

class _$QuizDetailStateDataImpl implements _QuizDetailStateData {
  const _$QuizDetailStateDataImpl({this.error = '', this.detailQuizResponse});

  @override
  @JsonKey()
  final String error;
  @override
  final DetailQuizResponse? detailQuizResponse;

  @override
  String toString() {
    return 'QuizDetailStateData(error: $error, detailQuizResponse: $detailQuizResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizDetailStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.detailQuizResponse, detailQuizResponse) ||
                other.detailQuizResponse == detailQuizResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, detailQuizResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizDetailStateDataImplCopyWith<_$QuizDetailStateDataImpl> get copyWith =>
      __$$QuizDetailStateDataImplCopyWithImpl<_$QuizDetailStateDataImpl>(
          this, _$identity);
}

abstract class _QuizDetailStateData implements QuizDetailStateData {
  const factory _QuizDetailStateData(
          {final String error, final DetailQuizResponse? detailQuizResponse}) =
      _$QuizDetailStateDataImpl;

  @override
  String get error;
  @override
  DetailQuizResponse? get detailQuizResponse;
  @override
  @JsonKey(ignore: true)
  _$$QuizDetailStateDataImplCopyWith<_$QuizDetailStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuizDetailState {
  QuizDetailStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuizDetailStateData data) initial,
    required TResult Function(QuizDetailStateData data) getError,
    required TResult Function(QuizDetailStateData data) detailQuiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuizDetailStateData data)? initial,
    TResult? Function(QuizDetailStateData data)? getError,
    TResult? Function(QuizDetailStateData data)? detailQuiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizDetailStateData data)? initial,
    TResult Function(QuizDetailStateData data)? getError,
    TResult Function(QuizDetailStateData data)? detailQuiz,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) getError,
    required TResult Function(DetailQuiz value) detailQuiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? getError,
    TResult? Function(DetailQuiz value)? detailQuiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? getError,
    TResult Function(DetailQuiz value)? detailQuiz,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizDetailStateCopyWith<QuizDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizDetailStateCopyWith<$Res> {
  factory $QuizDetailStateCopyWith(
          QuizDetailState value, $Res Function(QuizDetailState) then) =
      _$QuizDetailStateCopyWithImpl<$Res, QuizDetailState>;
  @useResult
  $Res call({QuizDetailStateData data});

  $QuizDetailStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$QuizDetailStateCopyWithImpl<$Res, $Val extends QuizDetailState>
    implements $QuizDetailStateCopyWith<$Res> {
  _$QuizDetailStateCopyWithImpl(this._value, this._then);

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
              as QuizDetailStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuizDetailStateDataCopyWith<$Res> get data {
    return $QuizDetailStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $QuizDetailStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuizDetailStateData data});

  @override
  $QuizDetailStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$QuizDetailStateCopyWithImpl<$Res, _$InitialImpl>
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
              as QuizDetailStateData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({required this.data});

  @override
  final QuizDetailStateData data;

  @override
  String toString() {
    return 'QuizDetailState.initial(data: $data)';
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
    required TResult Function(QuizDetailStateData data) initial,
    required TResult Function(QuizDetailStateData data) getError,
    required TResult Function(QuizDetailStateData data) detailQuiz,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuizDetailStateData data)? initial,
    TResult? Function(QuizDetailStateData data)? getError,
    TResult? Function(QuizDetailStateData data)? detailQuiz,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizDetailStateData data)? initial,
    TResult Function(QuizDetailStateData data)? getError,
    TResult Function(QuizDetailStateData data)? detailQuiz,
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
    required TResult Function(Error value) getError,
    required TResult Function(DetailQuiz value) detailQuiz,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? getError,
    TResult? Function(DetailQuiz value)? detailQuiz,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? getError,
    TResult Function(DetailQuiz value)? detailQuiz,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements QuizDetailState {
  const factory Initial({required final QuizDetailStateData data}) =
      _$InitialImpl;

  @override
  QuizDetailStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $QuizDetailStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuizDetailStateData data});

  @override
  $QuizDetailStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$QuizDetailStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ErrorImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as QuizDetailStateData,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.data});

  @override
  final QuizDetailStateData data;

  @override
  String toString() {
    return 'QuizDetailState.getError(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuizDetailStateData data) initial,
    required TResult Function(QuizDetailStateData data) getError,
    required TResult Function(QuizDetailStateData data) detailQuiz,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuizDetailStateData data)? initial,
    TResult? Function(QuizDetailStateData data)? getError,
    TResult? Function(QuizDetailStateData data)? detailQuiz,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizDetailStateData data)? initial,
    TResult Function(QuizDetailStateData data)? getError,
    TResult Function(QuizDetailStateData data)? detailQuiz,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) getError,
    required TResult Function(DetailQuiz value) detailQuiz,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? getError,
    TResult? Function(DetailQuiz value)? detailQuiz,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? getError,
    TResult Function(DetailQuiz value)? detailQuiz,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class Error implements QuizDetailState {
  const factory Error({required final QuizDetailStateData data}) = _$ErrorImpl;

  @override
  QuizDetailStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailQuizImplCopyWith<$Res>
    implements $QuizDetailStateCopyWith<$Res> {
  factory _$$DetailQuizImplCopyWith(
          _$DetailQuizImpl value, $Res Function(_$DetailQuizImpl) then) =
      __$$DetailQuizImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuizDetailStateData data});

  @override
  $QuizDetailStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DetailQuizImplCopyWithImpl<$Res>
    extends _$QuizDetailStateCopyWithImpl<$Res, _$DetailQuizImpl>
    implements _$$DetailQuizImplCopyWith<$Res> {
  __$$DetailQuizImplCopyWithImpl(
      _$DetailQuizImpl _value, $Res Function(_$DetailQuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DetailQuizImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as QuizDetailStateData,
    ));
  }
}

/// @nodoc

class _$DetailQuizImpl implements DetailQuiz {
  const _$DetailQuizImpl({required this.data});

  @override
  final QuizDetailStateData data;

  @override
  String toString() {
    return 'QuizDetailState.detailQuiz(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailQuizImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailQuizImplCopyWith<_$DetailQuizImpl> get copyWith =>
      __$$DetailQuizImplCopyWithImpl<_$DetailQuizImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuizDetailStateData data) initial,
    required TResult Function(QuizDetailStateData data) getError,
    required TResult Function(QuizDetailStateData data) detailQuiz,
  }) {
    return detailQuiz(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuizDetailStateData data)? initial,
    TResult? Function(QuizDetailStateData data)? getError,
    TResult? Function(QuizDetailStateData data)? detailQuiz,
  }) {
    return detailQuiz?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizDetailStateData data)? initial,
    TResult Function(QuizDetailStateData data)? getError,
    TResult Function(QuizDetailStateData data)? detailQuiz,
    required TResult orElse(),
  }) {
    if (detailQuiz != null) {
      return detailQuiz(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) getError,
    required TResult Function(DetailQuiz value) detailQuiz,
  }) {
    return detailQuiz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? getError,
    TResult? Function(DetailQuiz value)? detailQuiz,
  }) {
    return detailQuiz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? getError,
    TResult Function(DetailQuiz value)? detailQuiz,
    required TResult orElse(),
  }) {
    if (detailQuiz != null) {
      return detailQuiz(this);
    }
    return orElse();
  }
}

abstract class DetailQuiz implements QuizDetailState {
  const factory DetailQuiz({required final QuizDetailStateData data}) =
      _$DetailQuizImpl;

  @override
  QuizDetailStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$DetailQuizImplCopyWith<_$DetailQuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
