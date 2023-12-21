// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizStateData {
  String get error => throw _privateConstructorUsedError;
  MultipleChoiceResponse? get multipleChoiceResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizStateDataCopyWith<QuizStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateDataCopyWith<$Res> {
  factory $QuizStateDataCopyWith(
          QuizStateData value, $Res Function(QuizStateData) then) =
      _$QuizStateDataCopyWithImpl<$Res, QuizStateData>;
  @useResult
  $Res call({String error, MultipleChoiceResponse? multipleChoiceResponse});
}

/// @nodoc
class _$QuizStateDataCopyWithImpl<$Res, $Val extends QuizStateData>
    implements $QuizStateDataCopyWith<$Res> {
  _$QuizStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? multipleChoiceResponse = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      multipleChoiceResponse: freezed == multipleChoiceResponse
          ? _value.multipleChoiceResponse
          : multipleChoiceResponse // ignore: cast_nullable_to_non_nullable
              as MultipleChoiceResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizStateDataImplCopyWith<$Res>
    implements $QuizStateDataCopyWith<$Res> {
  factory _$$QuizStateDataImplCopyWith(
          _$QuizStateDataImpl value, $Res Function(_$QuizStateDataImpl) then) =
      __$$QuizStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, MultipleChoiceResponse? multipleChoiceResponse});
}

/// @nodoc
class __$$QuizStateDataImplCopyWithImpl<$Res>
    extends _$QuizStateDataCopyWithImpl<$Res, _$QuizStateDataImpl>
    implements _$$QuizStateDataImplCopyWith<$Res> {
  __$$QuizStateDataImplCopyWithImpl(
      _$QuizStateDataImpl _value, $Res Function(_$QuizStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? multipleChoiceResponse = freezed,
  }) {
    return _then(_$QuizStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      multipleChoiceResponse: freezed == multipleChoiceResponse
          ? _value.multipleChoiceResponse
          : multipleChoiceResponse // ignore: cast_nullable_to_non_nullable
              as MultipleChoiceResponse?,
    ));
  }
}

/// @nodoc

class _$QuizStateDataImpl implements _QuizStateData {
  const _$QuizStateDataImpl({this.error = '', this.multipleChoiceResponse});

  @override
  @JsonKey()
  final String error;
  @override
  final MultipleChoiceResponse? multipleChoiceResponse;

  @override
  String toString() {
    return 'QuizStateData(error: $error, multipleChoiceResponse: $multipleChoiceResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.multipleChoiceResponse, multipleChoiceResponse) ||
                other.multipleChoiceResponse == multipleChoiceResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, multipleChoiceResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizStateDataImplCopyWith<_$QuizStateDataImpl> get copyWith =>
      __$$QuizStateDataImplCopyWithImpl<_$QuizStateDataImpl>(this, _$identity);
}

abstract class _QuizStateData implements QuizStateData {
  const factory _QuizStateData(
          {final String error,
          final MultipleChoiceResponse? multipleChoiceResponse}) =
      _$QuizStateDataImpl;

  @override
  String get error;
  @override
  MultipleChoiceResponse? get multipleChoiceResponse;
  @override
  @JsonKey(ignore: true)
  _$$QuizStateDataImplCopyWith<_$QuizStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuizState {
  QuizStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuizStateData data) initial,
    required TResult Function(QuizStateData data) loading,
    required TResult Function(QuizStateData data) listQuiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuizStateData data)? initial,
    TResult? Function(QuizStateData data)? loading,
    TResult? Function(QuizStateData data)? listQuiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizStateData data)? initial,
    TResult Function(QuizStateData data)? loading,
    TResult Function(QuizStateData data)? listQuiz,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ListQuiz value) listQuiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ListQuiz value)? listQuiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ListQuiz value)? listQuiz,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizStateCopyWith<QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res, QuizState>;
  @useResult
  $Res call({QuizStateData data});

  $QuizStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res, $Val extends QuizState>
    implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

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
              as QuizStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuizStateDataCopyWith<$Res> get data {
    return $QuizStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $QuizStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuizStateData data});

  @override
  $QuizStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$InitialImpl>
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
              as QuizStateData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({required this.data});

  @override
  final QuizStateData data;

  @override
  String toString() {
    return 'QuizState.initial(data: $data)';
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
    required TResult Function(QuizStateData data) initial,
    required TResult Function(QuizStateData data) loading,
    required TResult Function(QuizStateData data) listQuiz,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuizStateData data)? initial,
    TResult? Function(QuizStateData data)? loading,
    TResult? Function(QuizStateData data)? listQuiz,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizStateData data)? initial,
    TResult Function(QuizStateData data)? loading,
    TResult Function(QuizStateData data)? listQuiz,
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
    required TResult Function(Loading value) loading,
    required TResult Function(ListQuiz value) listQuiz,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ListQuiz value)? listQuiz,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ListQuiz value)? listQuiz,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements QuizState {
  const factory Initial({required final QuizStateData data}) = _$InitialImpl;

  @override
  QuizStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $QuizStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuizStateData data});

  @override
  $QuizStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadingImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as QuizStateData,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl({required this.data});

  @override
  final QuizStateData data;

  @override
  String toString() {
    return 'QuizState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuizStateData data) initial,
    required TResult Function(QuizStateData data) loading,
    required TResult Function(QuizStateData data) listQuiz,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuizStateData data)? initial,
    TResult? Function(QuizStateData data)? loading,
    TResult? Function(QuizStateData data)? listQuiz,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizStateData data)? initial,
    TResult Function(QuizStateData data)? loading,
    TResult Function(QuizStateData data)? listQuiz,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ListQuiz value) listQuiz,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ListQuiz value)? listQuiz,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ListQuiz value)? listQuiz,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements QuizState {
  const factory Loading({required final QuizStateData data}) = _$LoadingImpl;

  @override
  QuizStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListQuizImplCopyWith<$Res>
    implements $QuizStateCopyWith<$Res> {
  factory _$$ListQuizImplCopyWith(
          _$ListQuizImpl value, $Res Function(_$ListQuizImpl) then) =
      __$$ListQuizImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuizStateData data});

  @override
  $QuizStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ListQuizImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$ListQuizImpl>
    implements _$$ListQuizImplCopyWith<$Res> {
  __$$ListQuizImplCopyWithImpl(
      _$ListQuizImpl _value, $Res Function(_$ListQuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ListQuizImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as QuizStateData,
    ));
  }
}

/// @nodoc

class _$ListQuizImpl implements ListQuiz {
  const _$ListQuizImpl({required this.data});

  @override
  final QuizStateData data;

  @override
  String toString() {
    return 'QuizState.listQuiz(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListQuizImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListQuizImplCopyWith<_$ListQuizImpl> get copyWith =>
      __$$ListQuizImplCopyWithImpl<_$ListQuizImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuizStateData data) initial,
    required TResult Function(QuizStateData data) loading,
    required TResult Function(QuizStateData data) listQuiz,
  }) {
    return listQuiz(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuizStateData data)? initial,
    TResult? Function(QuizStateData data)? loading,
    TResult? Function(QuizStateData data)? listQuiz,
  }) {
    return listQuiz?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizStateData data)? initial,
    TResult Function(QuizStateData data)? loading,
    TResult Function(QuizStateData data)? listQuiz,
    required TResult orElse(),
  }) {
    if (listQuiz != null) {
      return listQuiz(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ListQuiz value) listQuiz,
  }) {
    return listQuiz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ListQuiz value)? listQuiz,
  }) {
    return listQuiz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ListQuiz value)? listQuiz,
    required TResult orElse(),
  }) {
    if (listQuiz != null) {
      return listQuiz(this);
    }
    return orElse();
  }
}

abstract class ListQuiz implements QuizState {
  const factory ListQuiz({required final QuizStateData data}) = _$ListQuizImpl;

  @override
  QuizStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$ListQuizImplCopyWith<_$ListQuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
