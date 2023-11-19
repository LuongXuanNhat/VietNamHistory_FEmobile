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
  SuccesResponseBool? get likePost => throw _privateConstructorUsedError;
  SuccesResponseBool? get savePost => throw _privateConstructorUsedError;
  bool get isLike => throw _privateConstructorUsedError;
  bool get isSave => throw _privateConstructorUsedError;

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
  $Res call(
      {String error,
      AddPostResponse? detailPost,
      SuccesResponseBool? likePost,
      SuccesResponseBool? savePost,
      bool isLike,
      bool isSave});
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
    Object? likePost = freezed,
    Object? savePost = freezed,
    Object? isLike = null,
    Object? isSave = null,
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
      likePost: freezed == likePost
          ? _value.likePost
          : likePost // ignore: cast_nullable_to_non_nullable
              as SuccesResponseBool?,
      savePost: freezed == savePost
          ? _value.savePost
          : savePost // ignore: cast_nullable_to_non_nullable
              as SuccesResponseBool?,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
      isSave: null == isSave
          ? _value.isSave
          : isSave // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call(
      {String error,
      AddPostResponse? detailPost,
      SuccesResponseBool? likePost,
      SuccesResponseBool? savePost,
      bool isLike,
      bool isSave});
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
    Object? likePost = freezed,
    Object? savePost = freezed,
    Object? isLike = null,
    Object? isSave = null,
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
      likePost: freezed == likePost
          ? _value.likePost
          : likePost // ignore: cast_nullable_to_non_nullable
              as SuccesResponseBool?,
      savePost: freezed == savePost
          ? _value.savePost
          : savePost // ignore: cast_nullable_to_non_nullable
              as SuccesResponseBool?,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
      isSave: null == isSave
          ? _value.isSave
          : isSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DetailPostStateDataImpl
    with DiagnosticableTreeMixin
    implements _DetailPostStateData {
  const _$DetailPostStateDataImpl(
      {this.error = '',
      this.detailPost,
      this.likePost,
      this.savePost,
      this.isLike = false,
      this.isSave = false});

  @override
  @JsonKey()
  final String error;
  @override
  final AddPostResponse? detailPost;
  @override
  final SuccesResponseBool? likePost;
  @override
  final SuccesResponseBool? savePost;
  @override
  @JsonKey()
  final bool isLike;
  @override
  @JsonKey()
  final bool isSave;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailPostStateData(error: $error, detailPost: $detailPost, likePost: $likePost, savePost: $savePost, isLike: $isLike, isSave: $isSave)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailPostStateData'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('detailPost', detailPost))
      ..add(DiagnosticsProperty('likePost', likePost))
      ..add(DiagnosticsProperty('savePost', savePost))
      ..add(DiagnosticsProperty('isLike', isLike))
      ..add(DiagnosticsProperty('isSave', isSave));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailPostStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.detailPost, detailPost) ||
                other.detailPost == detailPost) &&
            (identical(other.likePost, likePost) ||
                other.likePost == likePost) &&
            (identical(other.savePost, savePost) ||
                other.savePost == savePost) &&
            (identical(other.isLike, isLike) || other.isLike == isLike) &&
            (identical(other.isSave, isSave) || other.isSave == isSave));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, error, detailPost, likePost, savePost, isLike, isSave);

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
      final AddPostResponse? detailPost,
      final SuccesResponseBool? likePost,
      final SuccesResponseBool? savePost,
      final bool isLike,
      final bool isSave}) = _$DetailPostStateDataImpl;

  @override
  String get error;
  @override
  AddPostResponse? get detailPost;
  @override
  SuccesResponseBool? get likePost;
  @override
  SuccesResponseBool? get savePost;
  @override
  bool get isLike;
  @override
  bool get isSave;
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
    required TResult Function(DetailPostStateData data) likePost,
    required TResult Function(DetailPostStateData data) isLike,
    required TResult Function(DetailPostStateData data) savePost,
    required TResult Function(DetailPostStateData data) isSave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailPostStateData data)? initial,
    TResult? Function(DetailPostStateData data)? getError,
    TResult? Function(DetailPostStateData data)? getDetailPost,
    TResult? Function(DetailPostStateData data)? likePost,
    TResult? Function(DetailPostStateData data)? isLike,
    TResult? Function(DetailPostStateData data)? savePost,
    TResult? Function(DetailPostStateData data)? isSave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailPostStateData data)? initial,
    TResult Function(DetailPostStateData data)? getError,
    TResult Function(DetailPostStateData data)? getDetailPost,
    TResult Function(DetailPostStateData data)? likePost,
    TResult Function(DetailPostStateData data)? isLike,
    TResult Function(DetailPostStateData data)? savePost,
    TResult Function(DetailPostStateData data)? isSave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetError value) getError,
    required TResult Function(_GetDetailPost value) getDetailPost,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_IsLike value) isLike,
    required TResult Function(_SavePost value) savePost,
    required TResult Function(_IsSave value) isSave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetDetailPost value)? getDetailPost,
    TResult? Function(_LikePost value)? likePost,
    TResult? Function(_IsLike value)? isLike,
    TResult? Function(_SavePost value)? savePost,
    TResult? Function(_IsSave value)? isSave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetDetailPost value)? getDetailPost,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_IsLike value)? isLike,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_IsSave value)? isSave,
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
    required TResult Function(DetailPostStateData data) getDetailPost,
    required TResult Function(DetailPostStateData data) likePost,
    required TResult Function(DetailPostStateData data) isLike,
    required TResult Function(DetailPostStateData data) savePost,
    required TResult Function(DetailPostStateData data) isSave,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailPostStateData data)? initial,
    TResult? Function(DetailPostStateData data)? getError,
    TResult? Function(DetailPostStateData data)? getDetailPost,
    TResult? Function(DetailPostStateData data)? likePost,
    TResult? Function(DetailPostStateData data)? isLike,
    TResult? Function(DetailPostStateData data)? savePost,
    TResult? Function(DetailPostStateData data)? isSave,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailPostStateData data)? initial,
    TResult Function(DetailPostStateData data)? getError,
    TResult Function(DetailPostStateData data)? getDetailPost,
    TResult Function(DetailPostStateData data)? likePost,
    TResult Function(DetailPostStateData data)? isLike,
    TResult Function(DetailPostStateData data)? savePost,
    TResult Function(DetailPostStateData data)? isSave,
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
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_IsLike value) isLike,
    required TResult Function(_SavePost value) savePost,
    required TResult Function(_IsSave value) isSave,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetDetailPost value)? getDetailPost,
    TResult? Function(_LikePost value)? likePost,
    TResult? Function(_IsLike value)? isLike,
    TResult? Function(_SavePost value)? savePost,
    TResult? Function(_IsSave value)? isSave,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetDetailPost value)? getDetailPost,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_IsLike value)? isLike,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_IsSave value)? isSave,
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
    required TResult Function(DetailPostStateData data) getDetailPost,
    required TResult Function(DetailPostStateData data) likePost,
    required TResult Function(DetailPostStateData data) isLike,
    required TResult Function(DetailPostStateData data) savePost,
    required TResult Function(DetailPostStateData data) isSave,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailPostStateData data)? initial,
    TResult? Function(DetailPostStateData data)? getError,
    TResult? Function(DetailPostStateData data)? getDetailPost,
    TResult? Function(DetailPostStateData data)? likePost,
    TResult? Function(DetailPostStateData data)? isLike,
    TResult? Function(DetailPostStateData data)? savePost,
    TResult? Function(DetailPostStateData data)? isSave,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailPostStateData data)? initial,
    TResult Function(DetailPostStateData data)? getError,
    TResult Function(DetailPostStateData data)? getDetailPost,
    TResult Function(DetailPostStateData data)? likePost,
    TResult Function(DetailPostStateData data)? isLike,
    TResult Function(DetailPostStateData data)? savePost,
    TResult Function(DetailPostStateData data)? isSave,
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
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_IsLike value) isLike,
    required TResult Function(_SavePost value) savePost,
    required TResult Function(_IsSave value) isSave,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetDetailPost value)? getDetailPost,
    TResult? Function(_LikePost value)? likePost,
    TResult? Function(_IsLike value)? isLike,
    TResult? Function(_SavePost value)? savePost,
    TResult? Function(_IsSave value)? isSave,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetDetailPost value)? getDetailPost,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_IsLike value)? isLike,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_IsSave value)? isSave,
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

class _$GetDetailPostImpl
    with DiagnosticableTreeMixin
    implements _GetDetailPost {
  const _$GetDetailPostImpl({required this.data});

  @override
  final DetailPostStateData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailPostState.getDetailPost(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailPostState.getDetailPost'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(DetailPostStateData data) likePost,
    required TResult Function(DetailPostStateData data) isLike,
    required TResult Function(DetailPostStateData data) savePost,
    required TResult Function(DetailPostStateData data) isSave,
  }) {
    return getDetailPost(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailPostStateData data)? initial,
    TResult? Function(DetailPostStateData data)? getError,
    TResult? Function(DetailPostStateData data)? getDetailPost,
    TResult? Function(DetailPostStateData data)? likePost,
    TResult? Function(DetailPostStateData data)? isLike,
    TResult? Function(DetailPostStateData data)? savePost,
    TResult? Function(DetailPostStateData data)? isSave,
  }) {
    return getDetailPost?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailPostStateData data)? initial,
    TResult Function(DetailPostStateData data)? getError,
    TResult Function(DetailPostStateData data)? getDetailPost,
    TResult Function(DetailPostStateData data)? likePost,
    TResult Function(DetailPostStateData data)? isLike,
    TResult Function(DetailPostStateData data)? savePost,
    TResult Function(DetailPostStateData data)? isSave,
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
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_IsLike value) isLike,
    required TResult Function(_SavePost value) savePost,
    required TResult Function(_IsSave value) isSave,
  }) {
    return getDetailPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetDetailPost value)? getDetailPost,
    TResult? Function(_LikePost value)? likePost,
    TResult? Function(_IsLike value)? isLike,
    TResult? Function(_SavePost value)? savePost,
    TResult? Function(_IsSave value)? isSave,
  }) {
    return getDetailPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetDetailPost value)? getDetailPost,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_IsLike value)? isLike,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_IsSave value)? isSave,
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

/// @nodoc
abstract class _$$LikePostImplCopyWith<$Res>
    implements $DetailPostStateCopyWith<$Res> {
  factory _$$LikePostImplCopyWith(
          _$LikePostImpl value, $Res Function(_$LikePostImpl) then) =
      __$$LikePostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailPostStateData data});

  @override
  $DetailPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LikePostImplCopyWithImpl<$Res>
    extends _$DetailPostStateCopyWithImpl<$Res, _$LikePostImpl>
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
              as DetailPostStateData,
    ));
  }
}

/// @nodoc

class _$LikePostImpl with DiagnosticableTreeMixin implements _LikePost {
  const _$LikePostImpl({required this.data});

  @override
  final DetailPostStateData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailPostState.likePost(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailPostState.likePost'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(DetailPostStateData data) initial,
    required TResult Function(DetailPostStateData data) getError,
    required TResult Function(DetailPostStateData data) getDetailPost,
    required TResult Function(DetailPostStateData data) likePost,
    required TResult Function(DetailPostStateData data) isLike,
    required TResult Function(DetailPostStateData data) savePost,
    required TResult Function(DetailPostStateData data) isSave,
  }) {
    return likePost(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailPostStateData data)? initial,
    TResult? Function(DetailPostStateData data)? getError,
    TResult? Function(DetailPostStateData data)? getDetailPost,
    TResult? Function(DetailPostStateData data)? likePost,
    TResult? Function(DetailPostStateData data)? isLike,
    TResult? Function(DetailPostStateData data)? savePost,
    TResult? Function(DetailPostStateData data)? isSave,
  }) {
    return likePost?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailPostStateData data)? initial,
    TResult Function(DetailPostStateData data)? getError,
    TResult Function(DetailPostStateData data)? getDetailPost,
    TResult Function(DetailPostStateData data)? likePost,
    TResult Function(DetailPostStateData data)? isLike,
    TResult Function(DetailPostStateData data)? savePost,
    TResult Function(DetailPostStateData data)? isSave,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetError value) getError,
    required TResult Function(_GetDetailPost value) getDetailPost,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_IsLike value) isLike,
    required TResult Function(_SavePost value) savePost,
    required TResult Function(_IsSave value) isSave,
  }) {
    return likePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetDetailPost value)? getDetailPost,
    TResult? Function(_LikePost value)? likePost,
    TResult? Function(_IsLike value)? isLike,
    TResult? Function(_SavePost value)? savePost,
    TResult? Function(_IsSave value)? isSave,
  }) {
    return likePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetDetailPost value)? getDetailPost,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_IsLike value)? isLike,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_IsSave value)? isSave,
    required TResult orElse(),
  }) {
    if (likePost != null) {
      return likePost(this);
    }
    return orElse();
  }
}

abstract class _LikePost implements DetailPostState {
  const factory _LikePost({required final DetailPostStateData data}) =
      _$LikePostImpl;

  @override
  DetailPostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$LikePostImplCopyWith<_$LikePostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsLikeImplCopyWith<$Res>
    implements $DetailPostStateCopyWith<$Res> {
  factory _$$IsLikeImplCopyWith(
          _$IsLikeImpl value, $Res Function(_$IsLikeImpl) then) =
      __$$IsLikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailPostStateData data});

  @override
  $DetailPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$IsLikeImplCopyWithImpl<$Res>
    extends _$DetailPostStateCopyWithImpl<$Res, _$IsLikeImpl>
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
              as DetailPostStateData,
    ));
  }
}

/// @nodoc

class _$IsLikeImpl with DiagnosticableTreeMixin implements _IsLike {
  const _$IsLikeImpl({required this.data});

  @override
  final DetailPostStateData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailPostState.isLike(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailPostState.isLike'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(DetailPostStateData data) initial,
    required TResult Function(DetailPostStateData data) getError,
    required TResult Function(DetailPostStateData data) getDetailPost,
    required TResult Function(DetailPostStateData data) likePost,
    required TResult Function(DetailPostStateData data) isLike,
    required TResult Function(DetailPostStateData data) savePost,
    required TResult Function(DetailPostStateData data) isSave,
  }) {
    return isLike(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailPostStateData data)? initial,
    TResult? Function(DetailPostStateData data)? getError,
    TResult? Function(DetailPostStateData data)? getDetailPost,
    TResult? Function(DetailPostStateData data)? likePost,
    TResult? Function(DetailPostStateData data)? isLike,
    TResult? Function(DetailPostStateData data)? savePost,
    TResult? Function(DetailPostStateData data)? isSave,
  }) {
    return isLike?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailPostStateData data)? initial,
    TResult Function(DetailPostStateData data)? getError,
    TResult Function(DetailPostStateData data)? getDetailPost,
    TResult Function(DetailPostStateData data)? likePost,
    TResult Function(DetailPostStateData data)? isLike,
    TResult Function(DetailPostStateData data)? savePost,
    TResult Function(DetailPostStateData data)? isSave,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetError value) getError,
    required TResult Function(_GetDetailPost value) getDetailPost,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_IsLike value) isLike,
    required TResult Function(_SavePost value) savePost,
    required TResult Function(_IsSave value) isSave,
  }) {
    return isLike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetDetailPost value)? getDetailPost,
    TResult? Function(_LikePost value)? likePost,
    TResult? Function(_IsLike value)? isLike,
    TResult? Function(_SavePost value)? savePost,
    TResult? Function(_IsSave value)? isSave,
  }) {
    return isLike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetDetailPost value)? getDetailPost,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_IsLike value)? isLike,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_IsSave value)? isSave,
    required TResult orElse(),
  }) {
    if (isLike != null) {
      return isLike(this);
    }
    return orElse();
  }
}

abstract class _IsLike implements DetailPostState {
  const factory _IsLike({required final DetailPostStateData data}) =
      _$IsLikeImpl;

  @override
  DetailPostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$IsLikeImplCopyWith<_$IsLikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavePostImplCopyWith<$Res>
    implements $DetailPostStateCopyWith<$Res> {
  factory _$$SavePostImplCopyWith(
          _$SavePostImpl value, $Res Function(_$SavePostImpl) then) =
      __$$SavePostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailPostStateData data});

  @override
  $DetailPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SavePostImplCopyWithImpl<$Res>
    extends _$DetailPostStateCopyWithImpl<$Res, _$SavePostImpl>
    implements _$$SavePostImplCopyWith<$Res> {
  __$$SavePostImplCopyWithImpl(
      _$SavePostImpl _value, $Res Function(_$SavePostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SavePostImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailPostStateData,
    ));
  }
}

/// @nodoc

class _$SavePostImpl with DiagnosticableTreeMixin implements _SavePost {
  const _$SavePostImpl({required this.data});

  @override
  final DetailPostStateData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailPostState.savePost(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailPostState.savePost'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePostImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePostImplCopyWith<_$SavePostImpl> get copyWith =>
      __$$SavePostImplCopyWithImpl<_$SavePostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailPostStateData data) initial,
    required TResult Function(DetailPostStateData data) getError,
    required TResult Function(DetailPostStateData data) getDetailPost,
    required TResult Function(DetailPostStateData data) likePost,
    required TResult Function(DetailPostStateData data) isLike,
    required TResult Function(DetailPostStateData data) savePost,
    required TResult Function(DetailPostStateData data) isSave,
  }) {
    return savePost(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailPostStateData data)? initial,
    TResult? Function(DetailPostStateData data)? getError,
    TResult? Function(DetailPostStateData data)? getDetailPost,
    TResult? Function(DetailPostStateData data)? likePost,
    TResult? Function(DetailPostStateData data)? isLike,
    TResult? Function(DetailPostStateData data)? savePost,
    TResult? Function(DetailPostStateData data)? isSave,
  }) {
    return savePost?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailPostStateData data)? initial,
    TResult Function(DetailPostStateData data)? getError,
    TResult Function(DetailPostStateData data)? getDetailPost,
    TResult Function(DetailPostStateData data)? likePost,
    TResult Function(DetailPostStateData data)? isLike,
    TResult Function(DetailPostStateData data)? savePost,
    TResult Function(DetailPostStateData data)? isSave,
    required TResult orElse(),
  }) {
    if (savePost != null) {
      return savePost(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetError value) getError,
    required TResult Function(_GetDetailPost value) getDetailPost,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_IsLike value) isLike,
    required TResult Function(_SavePost value) savePost,
    required TResult Function(_IsSave value) isSave,
  }) {
    return savePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetDetailPost value)? getDetailPost,
    TResult? Function(_LikePost value)? likePost,
    TResult? Function(_IsLike value)? isLike,
    TResult? Function(_SavePost value)? savePost,
    TResult? Function(_IsSave value)? isSave,
  }) {
    return savePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetDetailPost value)? getDetailPost,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_IsLike value)? isLike,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_IsSave value)? isSave,
    required TResult orElse(),
  }) {
    if (savePost != null) {
      return savePost(this);
    }
    return orElse();
  }
}

abstract class _SavePost implements DetailPostState {
  const factory _SavePost({required final DetailPostStateData data}) =
      _$SavePostImpl;

  @override
  DetailPostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$SavePostImplCopyWith<_$SavePostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsSaveImplCopyWith<$Res>
    implements $DetailPostStateCopyWith<$Res> {
  factory _$$IsSaveImplCopyWith(
          _$IsSaveImpl value, $Res Function(_$IsSaveImpl) then) =
      __$$IsSaveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailPostStateData data});

  @override
  $DetailPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$IsSaveImplCopyWithImpl<$Res>
    extends _$DetailPostStateCopyWithImpl<$Res, _$IsSaveImpl>
    implements _$$IsSaveImplCopyWith<$Res> {
  __$$IsSaveImplCopyWithImpl(
      _$IsSaveImpl _value, $Res Function(_$IsSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$IsSaveImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailPostStateData,
    ));
  }
}

/// @nodoc

class _$IsSaveImpl with DiagnosticableTreeMixin implements _IsSave {
  const _$IsSaveImpl({required this.data});

  @override
  final DetailPostStateData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailPostState.isSave(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailPostState.isSave'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsSaveImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsSaveImplCopyWith<_$IsSaveImpl> get copyWith =>
      __$$IsSaveImplCopyWithImpl<_$IsSaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailPostStateData data) initial,
    required TResult Function(DetailPostStateData data) getError,
    required TResult Function(DetailPostStateData data) getDetailPost,
    required TResult Function(DetailPostStateData data) likePost,
    required TResult Function(DetailPostStateData data) isLike,
    required TResult Function(DetailPostStateData data) savePost,
    required TResult Function(DetailPostStateData data) isSave,
  }) {
    return isSave(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailPostStateData data)? initial,
    TResult? Function(DetailPostStateData data)? getError,
    TResult? Function(DetailPostStateData data)? getDetailPost,
    TResult? Function(DetailPostStateData data)? likePost,
    TResult? Function(DetailPostStateData data)? isLike,
    TResult? Function(DetailPostStateData data)? savePost,
    TResult? Function(DetailPostStateData data)? isSave,
  }) {
    return isSave?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailPostStateData data)? initial,
    TResult Function(DetailPostStateData data)? getError,
    TResult Function(DetailPostStateData data)? getDetailPost,
    TResult Function(DetailPostStateData data)? likePost,
    TResult Function(DetailPostStateData data)? isLike,
    TResult Function(DetailPostStateData data)? savePost,
    TResult Function(DetailPostStateData data)? isSave,
    required TResult orElse(),
  }) {
    if (isSave != null) {
      return isSave(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetError value) getError,
    required TResult Function(_GetDetailPost value) getDetailPost,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_IsLike value) isLike,
    required TResult Function(_SavePost value) savePost,
    required TResult Function(_IsSave value) isSave,
  }) {
    return isSave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetDetailPost value)? getDetailPost,
    TResult? Function(_LikePost value)? likePost,
    TResult? Function(_IsLike value)? isLike,
    TResult? Function(_SavePost value)? savePost,
    TResult? Function(_IsSave value)? isSave,
  }) {
    return isSave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetDetailPost value)? getDetailPost,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_IsLike value)? isLike,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_IsSave value)? isSave,
    required TResult orElse(),
  }) {
    if (isSave != null) {
      return isSave(this);
    }
    return orElse();
  }
}

abstract class _IsSave implements DetailPostState {
  const factory _IsSave({required final DetailPostStateData data}) =
      _$IsSaveImpl;

  @override
  DetailPostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$IsSaveImplCopyWith<_$IsSaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
