// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_comment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditCommentStateData {
  String get error => throw _privateConstructorUsedError;
  CommentResponse? get commentResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditCommentStateDataCopyWith<EditCommentStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCommentStateDataCopyWith<$Res> {
  factory $EditCommentStateDataCopyWith(EditCommentStateData value,
          $Res Function(EditCommentStateData) then) =
      _$EditCommentStateDataCopyWithImpl<$Res, EditCommentStateData>;
  @useResult
  $Res call({String error, CommentResponse? commentResponse});
}

/// @nodoc
class _$EditCommentStateDataCopyWithImpl<$Res,
        $Val extends EditCommentStateData>
    implements $EditCommentStateDataCopyWith<$Res> {
  _$EditCommentStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? commentResponse = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      commentResponse: freezed == commentResponse
          ? _value.commentResponse
          : commentResponse // ignore: cast_nullable_to_non_nullable
              as CommentResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditCommentStateDataImplCopyWith<$Res>
    implements $EditCommentStateDataCopyWith<$Res> {
  factory _$$EditCommentStateDataImplCopyWith(_$EditCommentStateDataImpl value,
          $Res Function(_$EditCommentStateDataImpl) then) =
      __$$EditCommentStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, CommentResponse? commentResponse});
}

/// @nodoc
class __$$EditCommentStateDataImplCopyWithImpl<$Res>
    extends _$EditCommentStateDataCopyWithImpl<$Res, _$EditCommentStateDataImpl>
    implements _$$EditCommentStateDataImplCopyWith<$Res> {
  __$$EditCommentStateDataImplCopyWithImpl(_$EditCommentStateDataImpl _value,
      $Res Function(_$EditCommentStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? commentResponse = freezed,
  }) {
    return _then(_$EditCommentStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      commentResponse: freezed == commentResponse
          ? _value.commentResponse
          : commentResponse // ignore: cast_nullable_to_non_nullable
              as CommentResponse?,
    ));
  }
}

/// @nodoc

class _$EditCommentStateDataImpl implements _EditCommentStateData {
  const _$EditCommentStateDataImpl({this.error = '', this.commentResponse});

  @override
  @JsonKey()
  final String error;
  @override
  final CommentResponse? commentResponse;

  @override
  String toString() {
    return 'EditCommentStateData(error: $error, commentResponse: $commentResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditCommentStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.commentResponse, commentResponse) ||
                other.commentResponse == commentResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, commentResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditCommentStateDataImplCopyWith<_$EditCommentStateDataImpl>
      get copyWith =>
          __$$EditCommentStateDataImplCopyWithImpl<_$EditCommentStateDataImpl>(
              this, _$identity);
}

abstract class _EditCommentStateData implements EditCommentStateData {
  const factory _EditCommentStateData(
      {final String error,
      final CommentResponse? commentResponse}) = _$EditCommentStateDataImpl;

  @override
  String get error;
  @override
  CommentResponse? get commentResponse;
  @override
  @JsonKey(ignore: true)
  _$$EditCommentStateDataImplCopyWith<_$EditCommentStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditCommentState {
  EditCommentStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditCommentStateData data) initial,
    required TResult Function(EditCommentStateData data) getError,
    required TResult Function(EditCommentStateData data) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditCommentStateData data)? initial,
    TResult? Function(EditCommentStateData data)? getError,
    TResult? Function(EditCommentStateData data)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditCommentStateData data)? initial,
    TResult Function(EditCommentStateData data)? getError,
    TResult Function(EditCommentStateData data)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditCommentStateCopyWith<EditCommentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCommentStateCopyWith<$Res> {
  factory $EditCommentStateCopyWith(
          EditCommentState value, $Res Function(EditCommentState) then) =
      _$EditCommentStateCopyWithImpl<$Res, EditCommentState>;
  @useResult
  $Res call({EditCommentStateData data});

  $EditCommentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$EditCommentStateCopyWithImpl<$Res, $Val extends EditCommentState>
    implements $EditCommentStateCopyWith<$Res> {
  _$EditCommentStateCopyWithImpl(this._value, this._then);

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
              as EditCommentStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EditCommentStateDataCopyWith<$Res> get data {
    return $EditCommentStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $EditCommentStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditCommentStateData data});

  @override
  $EditCommentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EditCommentStateCopyWithImpl<$Res, _$InitialImpl>
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
              as EditCommentStateData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({required this.data});

  @override
  final EditCommentStateData data;

  @override
  String toString() {
    return 'EditCommentState.initial(data: $data)';
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
    required TResult Function(EditCommentStateData data) initial,
    required TResult Function(EditCommentStateData data) getError,
    required TResult Function(EditCommentStateData data) loading,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditCommentStateData data)? initial,
    TResult? Function(EditCommentStateData data)? getError,
    TResult? Function(EditCommentStateData data)? loading,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditCommentStateData data)? initial,
    TResult Function(EditCommentStateData data)? getError,
    TResult Function(EditCommentStateData data)? loading,
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
    required TResult Function(GetError value) getError,
    required TResult Function(Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements EditCommentState {
  const factory Initial({required final EditCommentStateData data}) =
      _$InitialImpl;

  @override
  EditCommentStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $EditCommentStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditCommentStateData data});

  @override
  $EditCommentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$EditCommentStateCopyWithImpl<$Res, _$GetErrorImpl>
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
              as EditCommentStateData,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl implements GetError {
  const _$GetErrorImpl({required this.data});

  @override
  final EditCommentStateData data;

  @override
  String toString() {
    return 'EditCommentState.getError(data: $data)';
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
    required TResult Function(EditCommentStateData data) initial,
    required TResult Function(EditCommentStateData data) getError,
    required TResult Function(EditCommentStateData data) loading,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditCommentStateData data)? initial,
    TResult? Function(EditCommentStateData data)? getError,
    TResult? Function(EditCommentStateData data)? loading,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditCommentStateData data)? initial,
    TResult Function(EditCommentStateData data)? getError,
    TResult Function(EditCommentStateData data)? loading,
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
    required TResult Function(GetError value) getError,
    required TResult Function(Loading value) loading,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Loading value)? loading,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements EditCommentState {
  const factory GetError({required final EditCommentStateData data}) =
      _$GetErrorImpl;

  @override
  EditCommentStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $EditCommentStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditCommentStateData data});

  @override
  $EditCommentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$EditCommentStateCopyWithImpl<$Res, _$LoadingImpl>
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
              as EditCommentStateData,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl({required this.data});

  @override
  final EditCommentStateData data;

  @override
  String toString() {
    return 'EditCommentState.loading(data: $data)';
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
    required TResult Function(EditCommentStateData data) initial,
    required TResult Function(EditCommentStateData data) getError,
    required TResult Function(EditCommentStateData data) loading,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditCommentStateData data)? initial,
    TResult? Function(EditCommentStateData data)? getError,
    TResult? Function(EditCommentStateData data)? loading,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditCommentStateData data)? initial,
    TResult Function(EditCommentStateData data)? getError,
    TResult Function(EditCommentStateData data)? loading,
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
    required TResult Function(GetError value) getError,
    required TResult Function(Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements EditCommentState {
  const factory Loading({required final EditCommentStateData data}) =
      _$LoadingImpl;

  @override
  EditCommentStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
