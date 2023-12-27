// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'likepost_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LikepostStateData {
  String get error => throw _privateConstructorUsedError;
  AddPostResponse? get data => throw _privateConstructorUsedError;
  SuccesResponseBool? get likePost => throw _privateConstructorUsedError;
  bool get isLike => throw _privateConstructorUsedError;
  int get numberLike => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikepostStateDataCopyWith<LikepostStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikepostStateDataCopyWith<$Res> {
  factory $LikepostStateDataCopyWith(
          LikepostStateData value, $Res Function(LikepostStateData) then) =
      _$LikepostStateDataCopyWithImpl<$Res, LikepostStateData>;
  @useResult
  $Res call(
      {String error,
      AddPostResponse? data,
      SuccesResponseBool? likePost,
      bool isLike,
      int numberLike});
}

/// @nodoc
class _$LikepostStateDataCopyWithImpl<$Res, $Val extends LikepostStateData>
    implements $LikepostStateDataCopyWith<$Res> {
  _$LikepostStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? data = freezed,
    Object? likePost = freezed,
    Object? isLike = null,
    Object? numberLike = null,
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
      likePost: freezed == likePost
          ? _value.likePost
          : likePost // ignore: cast_nullable_to_non_nullable
              as SuccesResponseBool?,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
      numberLike: null == numberLike
          ? _value.numberLike
          : numberLike // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikepostStateDataImplCopyWith<$Res>
    implements $LikepostStateDataCopyWith<$Res> {
  factory _$$LikepostStateDataImplCopyWith(_$LikepostStateDataImpl value,
          $Res Function(_$LikepostStateDataImpl) then) =
      __$$LikepostStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      AddPostResponse? data,
      SuccesResponseBool? likePost,
      bool isLike,
      int numberLike});
}

/// @nodoc
class __$$LikepostStateDataImplCopyWithImpl<$Res>
    extends _$LikepostStateDataCopyWithImpl<$Res, _$LikepostStateDataImpl>
    implements _$$LikepostStateDataImplCopyWith<$Res> {
  __$$LikepostStateDataImplCopyWithImpl(_$LikepostStateDataImpl _value,
      $Res Function(_$LikepostStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? data = freezed,
    Object? likePost = freezed,
    Object? isLike = null,
    Object? numberLike = null,
  }) {
    return _then(_$LikepostStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddPostResponse?,
      likePost: freezed == likePost
          ? _value.likePost
          : likePost // ignore: cast_nullable_to_non_nullable
              as SuccesResponseBool?,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
      numberLike: null == numberLike
          ? _value.numberLike
          : numberLike // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LikepostStateDataImpl implements _LikepostStateData {
  const _$LikepostStateDataImpl(
      {this.error = '',
      this.data,
      this.likePost,
      this.isLike = false,
      this.numberLike = 0});

  @override
  @JsonKey()
  final String error;
  @override
  final AddPostResponse? data;
  @override
  final SuccesResponseBool? likePost;
  @override
  @JsonKey()
  final bool isLike;
  @override
  @JsonKey()
  final int numberLike;

  @override
  String toString() {
    return 'LikepostStateData(error: $error, data: $data, likePost: $likePost, isLike: $isLike, numberLike: $numberLike)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikepostStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.likePost, likePost) ||
                other.likePost == likePost) &&
            (identical(other.isLike, isLike) || other.isLike == isLike) &&
            (identical(other.numberLike, numberLike) ||
                other.numberLike == numberLike));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, data, likePost, isLike, numberLike);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikepostStateDataImplCopyWith<_$LikepostStateDataImpl> get copyWith =>
      __$$LikepostStateDataImplCopyWithImpl<_$LikepostStateDataImpl>(
          this, _$identity);
}

abstract class _LikepostStateData implements LikepostStateData {
  const factory _LikepostStateData(
      {final String error,
      final AddPostResponse? data,
      final SuccesResponseBool? likePost,
      final bool isLike,
      final int numberLike}) = _$LikepostStateDataImpl;

  @override
  String get error;
  @override
  AddPostResponse? get data;
  @override
  SuccesResponseBool? get likePost;
  @override
  bool get isLike;
  @override
  int get numberLike;
  @override
  @JsonKey(ignore: true)
  _$$LikepostStateDataImplCopyWith<_$LikepostStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LikepostState {
  LikepostStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LikepostStateData data) initial,
    required TResult Function(LikepostStateData data) getError,
    required TResult Function(LikepostStateData data) likePost,
    required TResult Function(LikepostStateData data) isLike,
    required TResult Function(LikepostStateData data) success,
    required TResult Function(LikepostStateData data) numberLike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LikepostStateData data)? initial,
    TResult? Function(LikepostStateData data)? getError,
    TResult? Function(LikepostStateData data)? likePost,
    TResult? Function(LikepostStateData data)? isLike,
    TResult? Function(LikepostStateData data)? success,
    TResult? Function(LikepostStateData data)? numberLike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LikepostStateData data)? initial,
    TResult Function(LikepostStateData data)? getError,
    TResult Function(LikepostStateData data)? likePost,
    TResult Function(LikepostStateData data)? isLike,
    TResult Function(LikepostStateData data)? success,
    TResult Function(LikepostStateData data)? numberLike,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(LikePost value) likePost,
    required TResult Function(IsLike value) isLike,
    required TResult Function(Success value) success,
    required TResult Function(NumberLike value) numberLike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(LikePost value)? likePost,
    TResult? Function(IsLike value)? isLike,
    TResult? Function(Success value)? success,
    TResult? Function(NumberLike value)? numberLike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(LikePost value)? likePost,
    TResult Function(IsLike value)? isLike,
    TResult Function(Success value)? success,
    TResult Function(NumberLike value)? numberLike,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikepostStateCopyWith<LikepostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikepostStateCopyWith<$Res> {
  factory $LikepostStateCopyWith(
          LikepostState value, $Res Function(LikepostState) then) =
      _$LikepostStateCopyWithImpl<$Res, LikepostState>;
  @useResult
  $Res call({LikepostStateData data});

  $LikepostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$LikepostStateCopyWithImpl<$Res, $Val extends LikepostState>
    implements $LikepostStateCopyWith<$Res> {
  _$LikepostStateCopyWithImpl(this._value, this._then);

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
              as LikepostStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LikepostStateDataCopyWith<$Res> get data {
    return $LikepostStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $LikepostStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LikepostStateData data});

  @override
  $LikepostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LikepostStateCopyWithImpl<$Res, _$InitialImpl>
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
              as LikepostStateData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({required this.data});

  @override
  final LikepostStateData data;

  @override
  String toString() {
    return 'LikepostState.initial(data: $data)';
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
    required TResult Function(LikepostStateData data) initial,
    required TResult Function(LikepostStateData data) getError,
    required TResult Function(LikepostStateData data) likePost,
    required TResult Function(LikepostStateData data) isLike,
    required TResult Function(LikepostStateData data) success,
    required TResult Function(LikepostStateData data) numberLike,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LikepostStateData data)? initial,
    TResult? Function(LikepostStateData data)? getError,
    TResult? Function(LikepostStateData data)? likePost,
    TResult? Function(LikepostStateData data)? isLike,
    TResult? Function(LikepostStateData data)? success,
    TResult? Function(LikepostStateData data)? numberLike,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LikepostStateData data)? initial,
    TResult Function(LikepostStateData data)? getError,
    TResult Function(LikepostStateData data)? likePost,
    TResult Function(LikepostStateData data)? isLike,
    TResult Function(LikepostStateData data)? success,
    TResult Function(LikepostStateData data)? numberLike,
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
    required TResult Function(LikePost value) likePost,
    required TResult Function(IsLike value) isLike,
    required TResult Function(Success value) success,
    required TResult Function(NumberLike value) numberLike,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(LikePost value)? likePost,
    TResult? Function(IsLike value)? isLike,
    TResult? Function(Success value)? success,
    TResult? Function(NumberLike value)? numberLike,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(LikePost value)? likePost,
    TResult Function(IsLike value)? isLike,
    TResult Function(Success value)? success,
    TResult Function(NumberLike value)? numberLike,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LikepostState {
  const factory Initial({required final LikepostStateData data}) =
      _$InitialImpl;

  @override
  LikepostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $LikepostStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LikepostStateData data});

  @override
  $LikepostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$LikepostStateCopyWithImpl<$Res, _$GetErrorImpl>
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
              as LikepostStateData,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl implements GetError {
  const _$GetErrorImpl({required this.data});

  @override
  final LikepostStateData data;

  @override
  String toString() {
    return 'LikepostState.getError(data: $data)';
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
    required TResult Function(LikepostStateData data) initial,
    required TResult Function(LikepostStateData data) getError,
    required TResult Function(LikepostStateData data) likePost,
    required TResult Function(LikepostStateData data) isLike,
    required TResult Function(LikepostStateData data) success,
    required TResult Function(LikepostStateData data) numberLike,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LikepostStateData data)? initial,
    TResult? Function(LikepostStateData data)? getError,
    TResult? Function(LikepostStateData data)? likePost,
    TResult? Function(LikepostStateData data)? isLike,
    TResult? Function(LikepostStateData data)? success,
    TResult? Function(LikepostStateData data)? numberLike,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LikepostStateData data)? initial,
    TResult Function(LikepostStateData data)? getError,
    TResult Function(LikepostStateData data)? likePost,
    TResult Function(LikepostStateData data)? isLike,
    TResult Function(LikepostStateData data)? success,
    TResult Function(LikepostStateData data)? numberLike,
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
    required TResult Function(LikePost value) likePost,
    required TResult Function(IsLike value) isLike,
    required TResult Function(Success value) success,
    required TResult Function(NumberLike value) numberLike,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(LikePost value)? likePost,
    TResult? Function(IsLike value)? isLike,
    TResult? Function(Success value)? success,
    TResult? Function(NumberLike value)? numberLike,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(LikePost value)? likePost,
    TResult Function(IsLike value)? isLike,
    TResult Function(Success value)? success,
    TResult Function(NumberLike value)? numberLike,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements LikepostState {
  const factory GetError({required final LikepostStateData data}) =
      _$GetErrorImpl;

  @override
  LikepostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikePostImplCopyWith<$Res>
    implements $LikepostStateCopyWith<$Res> {
  factory _$$LikePostImplCopyWith(
          _$LikePostImpl value, $Res Function(_$LikePostImpl) then) =
      __$$LikePostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LikepostStateData data});

  @override
  $LikepostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LikePostImplCopyWithImpl<$Res>
    extends _$LikepostStateCopyWithImpl<$Res, _$LikePostImpl>
    implements _$$LikePostImplCopyWith<$Res> {
  __$$LikePostImplCopyWithImpl(
      _$LikePostImpl _value, $Res Function(_$LikePostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LikePostImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LikepostStateData,
    ));
  }
}

/// @nodoc

class _$LikePostImpl implements LikePost {
  const _$LikePostImpl({required this.data});

  @override
  final LikepostStateData data;

  @override
  String toString() {
    return 'LikepostState.likePost(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikePostImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikePostImplCopyWith<_$LikePostImpl> get copyWith =>
      __$$LikePostImplCopyWithImpl<_$LikePostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LikepostStateData data) initial,
    required TResult Function(LikepostStateData data) getError,
    required TResult Function(LikepostStateData data) likePost,
    required TResult Function(LikepostStateData data) isLike,
    required TResult Function(LikepostStateData data) success,
    required TResult Function(LikepostStateData data) numberLike,
  }) {
    return likePost(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LikepostStateData data)? initial,
    TResult? Function(LikepostStateData data)? getError,
    TResult? Function(LikepostStateData data)? likePost,
    TResult? Function(LikepostStateData data)? isLike,
    TResult? Function(LikepostStateData data)? success,
    TResult? Function(LikepostStateData data)? numberLike,
  }) {
    return likePost?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LikepostStateData data)? initial,
    TResult Function(LikepostStateData data)? getError,
    TResult Function(LikepostStateData data)? likePost,
    TResult Function(LikepostStateData data)? isLike,
    TResult Function(LikepostStateData data)? success,
    TResult Function(LikepostStateData data)? numberLike,
    required TResult orElse(),
  }) {
    if (likePost != null) {
      return likePost(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(LikePost value) likePost,
    required TResult Function(IsLike value) isLike,
    required TResult Function(Success value) success,
    required TResult Function(NumberLike value) numberLike,
  }) {
    return likePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(LikePost value)? likePost,
    TResult? Function(IsLike value)? isLike,
    TResult? Function(Success value)? success,
    TResult? Function(NumberLike value)? numberLike,
  }) {
    return likePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(LikePost value)? likePost,
    TResult Function(IsLike value)? isLike,
    TResult Function(Success value)? success,
    TResult Function(NumberLike value)? numberLike,
    required TResult orElse(),
  }) {
    if (likePost != null) {
      return likePost(this);
    }
    return orElse();
  }
}

abstract class LikePost implements LikepostState {
  const factory LikePost({required final LikepostStateData data}) =
      _$LikePostImpl;

  @override
  LikepostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$LikePostImplCopyWith<_$LikePostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsLikeImplCopyWith<$Res>
    implements $LikepostStateCopyWith<$Res> {
  factory _$$IsLikeImplCopyWith(
          _$IsLikeImpl value, $Res Function(_$IsLikeImpl) then) =
      __$$IsLikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LikepostStateData data});

  @override
  $LikepostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$IsLikeImplCopyWithImpl<$Res>
    extends _$LikepostStateCopyWithImpl<$Res, _$IsLikeImpl>
    implements _$$IsLikeImplCopyWith<$Res> {
  __$$IsLikeImplCopyWithImpl(
      _$IsLikeImpl _value, $Res Function(_$IsLikeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$IsLikeImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LikepostStateData,
    ));
  }
}

/// @nodoc

class _$IsLikeImpl implements IsLike {
  const _$IsLikeImpl({required this.data});

  @override
  final LikepostStateData data;

  @override
  String toString() {
    return 'LikepostState.isLike(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsLikeImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsLikeImplCopyWith<_$IsLikeImpl> get copyWith =>
      __$$IsLikeImplCopyWithImpl<_$IsLikeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LikepostStateData data) initial,
    required TResult Function(LikepostStateData data) getError,
    required TResult Function(LikepostStateData data) likePost,
    required TResult Function(LikepostStateData data) isLike,
    required TResult Function(LikepostStateData data) success,
    required TResult Function(LikepostStateData data) numberLike,
  }) {
    return isLike(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LikepostStateData data)? initial,
    TResult? Function(LikepostStateData data)? getError,
    TResult? Function(LikepostStateData data)? likePost,
    TResult? Function(LikepostStateData data)? isLike,
    TResult? Function(LikepostStateData data)? success,
    TResult? Function(LikepostStateData data)? numberLike,
  }) {
    return isLike?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LikepostStateData data)? initial,
    TResult Function(LikepostStateData data)? getError,
    TResult Function(LikepostStateData data)? likePost,
    TResult Function(LikepostStateData data)? isLike,
    TResult Function(LikepostStateData data)? success,
    TResult Function(LikepostStateData data)? numberLike,
    required TResult orElse(),
  }) {
    if (isLike != null) {
      return isLike(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(LikePost value) likePost,
    required TResult Function(IsLike value) isLike,
    required TResult Function(Success value) success,
    required TResult Function(NumberLike value) numberLike,
  }) {
    return isLike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(LikePost value)? likePost,
    TResult? Function(IsLike value)? isLike,
    TResult? Function(Success value)? success,
    TResult? Function(NumberLike value)? numberLike,
  }) {
    return isLike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(LikePost value)? likePost,
    TResult Function(IsLike value)? isLike,
    TResult Function(Success value)? success,
    TResult Function(NumberLike value)? numberLike,
    required TResult orElse(),
  }) {
    if (isLike != null) {
      return isLike(this);
    }
    return orElse();
  }
}

abstract class IsLike implements LikepostState {
  const factory IsLike({required final LikepostStateData data}) = _$IsLikeImpl;

  @override
  LikepostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$IsLikeImplCopyWith<_$IsLikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $LikepostStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LikepostStateData data});

  @override
  $LikepostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$LikepostStateCopyWithImpl<$Res, _$SuccessImpl>
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
              as LikepostStateData,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({required this.data});

  @override
  final LikepostStateData data;

  @override
  String toString() {
    return 'LikepostState.success(data: $data)';
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
    required TResult Function(LikepostStateData data) initial,
    required TResult Function(LikepostStateData data) getError,
    required TResult Function(LikepostStateData data) likePost,
    required TResult Function(LikepostStateData data) isLike,
    required TResult Function(LikepostStateData data) success,
    required TResult Function(LikepostStateData data) numberLike,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LikepostStateData data)? initial,
    TResult? Function(LikepostStateData data)? getError,
    TResult? Function(LikepostStateData data)? likePost,
    TResult? Function(LikepostStateData data)? isLike,
    TResult? Function(LikepostStateData data)? success,
    TResult? Function(LikepostStateData data)? numberLike,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LikepostStateData data)? initial,
    TResult Function(LikepostStateData data)? getError,
    TResult Function(LikepostStateData data)? likePost,
    TResult Function(LikepostStateData data)? isLike,
    TResult Function(LikepostStateData data)? success,
    TResult Function(LikepostStateData data)? numberLike,
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
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(LikePost value) likePost,
    required TResult Function(IsLike value) isLike,
    required TResult Function(Success value) success,
    required TResult Function(NumberLike value) numberLike,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(LikePost value)? likePost,
    TResult? Function(IsLike value)? isLike,
    TResult? Function(Success value)? success,
    TResult? Function(NumberLike value)? numberLike,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(LikePost value)? likePost,
    TResult Function(IsLike value)? isLike,
    TResult Function(Success value)? success,
    TResult Function(NumberLike value)? numberLike,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements LikepostState {
  const factory Success({required final LikepostStateData data}) =
      _$SuccessImpl;

  @override
  LikepostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumberLikeImplCopyWith<$Res>
    implements $LikepostStateCopyWith<$Res> {
  factory _$$NumberLikeImplCopyWith(
          _$NumberLikeImpl value, $Res Function(_$NumberLikeImpl) then) =
      __$$NumberLikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LikepostStateData data});

  @override
  $LikepostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$NumberLikeImplCopyWithImpl<$Res>
    extends _$LikepostStateCopyWithImpl<$Res, _$NumberLikeImpl>
    implements _$$NumberLikeImplCopyWith<$Res> {
  __$$NumberLikeImplCopyWithImpl(
      _$NumberLikeImpl _value, $Res Function(_$NumberLikeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$NumberLikeImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LikepostStateData,
    ));
  }
}

/// @nodoc

class _$NumberLikeImpl implements NumberLike {
  const _$NumberLikeImpl({required this.data});

  @override
  final LikepostStateData data;

  @override
  String toString() {
    return 'LikepostState.numberLike(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberLikeImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberLikeImplCopyWith<_$NumberLikeImpl> get copyWith =>
      __$$NumberLikeImplCopyWithImpl<_$NumberLikeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LikepostStateData data) initial,
    required TResult Function(LikepostStateData data) getError,
    required TResult Function(LikepostStateData data) likePost,
    required TResult Function(LikepostStateData data) isLike,
    required TResult Function(LikepostStateData data) success,
    required TResult Function(LikepostStateData data) numberLike,
  }) {
    return numberLike(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LikepostStateData data)? initial,
    TResult? Function(LikepostStateData data)? getError,
    TResult? Function(LikepostStateData data)? likePost,
    TResult? Function(LikepostStateData data)? isLike,
    TResult? Function(LikepostStateData data)? success,
    TResult? Function(LikepostStateData data)? numberLike,
  }) {
    return numberLike?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LikepostStateData data)? initial,
    TResult Function(LikepostStateData data)? getError,
    TResult Function(LikepostStateData data)? likePost,
    TResult Function(LikepostStateData data)? isLike,
    TResult Function(LikepostStateData data)? success,
    TResult Function(LikepostStateData data)? numberLike,
    required TResult orElse(),
  }) {
    if (numberLike != null) {
      return numberLike(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(LikePost value) likePost,
    required TResult Function(IsLike value) isLike,
    required TResult Function(Success value) success,
    required TResult Function(NumberLike value) numberLike,
  }) {
    return numberLike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(LikePost value)? likePost,
    TResult? Function(IsLike value)? isLike,
    TResult? Function(Success value)? success,
    TResult? Function(NumberLike value)? numberLike,
  }) {
    return numberLike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(LikePost value)? likePost,
    TResult Function(IsLike value)? isLike,
    TResult Function(Success value)? success,
    TResult Function(NumberLike value)? numberLike,
    required TResult orElse(),
  }) {
    if (numberLike != null) {
      return numberLike(this);
    }
    return orElse();
  }
}

abstract class NumberLike implements LikepostState {
  const factory NumberLike({required final LikepostStateData data}) =
      _$NumberLikeImpl;

  @override
  LikepostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$NumberLikeImplCopyWith<_$NumberLikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
