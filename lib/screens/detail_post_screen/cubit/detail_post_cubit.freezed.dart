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
  AddPostResponse? get detailPost => throw _privateConstructorUsedError;

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
  $Res call({String error, AddPostResponse? detailPost});
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
    Object? detailPost = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      detailPost: freezed == detailPost
          ? _value.detailPost
          : detailPost // ignore: cast_nullable_to_non_nullable
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
  $Res call({String error, AddPostResponse? detailPost});
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
    Object? detailPost = freezed,
  }) {
    return _then(_$DetailPostStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      detailPost: freezed == detailPost
          ? _value.detailPost
          : detailPost // ignore: cast_nullable_to_non_nullable
              as AddPostResponse?,
    ));
  }
}

/// @nodoc

class _$DetailPostStateDataImpl implements _DetailPostStateData {
  const _$DetailPostStateDataImpl({this.error = '', this.detailPost});

  @override
  @JsonKey()
  final String error;
  @override
  final AddPostResponse? detailPost;

  @override
  String toString() {
    return 'DetailPostStateData(error: $error, detailPost: $detailPost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailPostStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.detailPost, detailPost) ||
                other.detailPost == detailPost));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, detailPost);

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
      final AddPostResponse? detailPost}) = _$DetailPostStateDataImpl;

  @override
  String get error;
  @override
  AddPostResponse? get detailPost;
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
    required TResult Function(DetailPostStateData data) getDetailPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailPostStateData data)? initial,
    TResult? Function(DetailPostStateData data)? getError,
    TResult? Function(DetailPostStateData data)? getDetailPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailPostStateData data)? initial,
    TResult Function(DetailPostStateData data)? getError,
    TResult Function(DetailPostStateData data)? getDetailPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetError value) getError,
    required TResult Function(_GetDetailPost value) getDetailPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetDetailPost value)? getDetailPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetDetailPost value)? getDetailPost,
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

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.data});

  @override
  final DetailPostStateData data;

  @override
  String toString() {
    return 'DetailPostState.initial(data: $data)';
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
    required TResult Function(DetailPostStateData data) getDetailPost,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailPostStateData data)? initial,
    TResult? Function(DetailPostStateData data)? getError,
    TResult? Function(DetailPostStateData data)? getDetailPost,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailPostStateData data)? initial,
    TResult Function(DetailPostStateData data)? getError,
    TResult Function(DetailPostStateData data)? getDetailPost,
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
    required TResult Function(_GetDetailPost value) getDetailPost,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetDetailPost value)? getDetailPost,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetDetailPost value)? getDetailPost,
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

class _$GetErrorImpl implements _GetError {
  const _$GetErrorImpl({required this.data});

  @override
  final DetailPostStateData data;

  @override
  String toString() {
    return 'DetailPostState.getError(data: $data)';
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
    required TResult Function(DetailPostStateData data) getDetailPost,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailPostStateData data)? initial,
    TResult? Function(DetailPostStateData data)? getError,
    TResult? Function(DetailPostStateData data)? getDetailPost,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailPostStateData data)? initial,
    TResult Function(DetailPostStateData data)? getError,
    TResult Function(DetailPostStateData data)? getDetailPost,
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
    required TResult Function(_GetDetailPost value) getDetailPost,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetDetailPost value)? getDetailPost,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetDetailPost value)? getDetailPost,
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
abstract class _$$GetDetailPostImplCopyWith<$Res>
    implements $DetailPostStateCopyWith<$Res> {
  factory _$$GetDetailPostImplCopyWith(
          _$GetDetailPostImpl value, $Res Function(_$GetDetailPostImpl) then) =
      __$$GetDetailPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailPostStateData data});

  @override
  $DetailPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetDetailPostImplCopyWithImpl<$Res>
    extends _$DetailPostStateCopyWithImpl<$Res, _$GetDetailPostImpl>
    implements _$$GetDetailPostImplCopyWith<$Res> {
  __$$GetDetailPostImplCopyWithImpl(
      _$GetDetailPostImpl _value, $Res Function(_$GetDetailPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetDetailPostImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailPostStateData,
    ));
  }
}

/// @nodoc

class _$GetDetailPostImpl implements _GetDetailPost {
  const _$GetDetailPostImpl({required this.data});

  @override
  final DetailPostStateData data;

  @override
  String toString() {
    return 'DetailPostState.getDetailPost(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailPostImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailPostImplCopyWith<_$GetDetailPostImpl> get copyWith =>
      __$$GetDetailPostImplCopyWithImpl<_$GetDetailPostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailPostStateData data) initial,
    required TResult Function(DetailPostStateData data) getError,
    required TResult Function(DetailPostStateData data) getDetailPost,
  }) {
    return getDetailPost(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailPostStateData data)? initial,
    TResult? Function(DetailPostStateData data)? getError,
    TResult? Function(DetailPostStateData data)? getDetailPost,
  }) {
    return getDetailPost?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailPostStateData data)? initial,
    TResult Function(DetailPostStateData data)? getError,
    TResult Function(DetailPostStateData data)? getDetailPost,
    required TResult orElse(),
  }) {
    if (getDetailPost != null) {
      return getDetailPost(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetError value) getError,
    required TResult Function(_GetDetailPost value) getDetailPost,
  }) {
    return getDetailPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetDetailPost value)? getDetailPost,
  }) {
    return getDetailPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetDetailPost value)? getDetailPost,
    required TResult orElse(),
  }) {
    if (getDetailPost != null) {
      return getDetailPost(this);
    }
    return orElse();
  }
}

abstract class _GetDetailPost implements DetailPostState {
  const factory _GetDetailPost({required final DetailPostStateData data}) =
      _$GetDetailPostImpl;

  @override
  DetailPostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetDetailPostImplCopyWith<_$GetDetailPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
