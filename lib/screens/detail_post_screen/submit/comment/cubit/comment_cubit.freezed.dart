// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentStateData {
  String get error => throw _privateConstructorUsedError;
  List<Comment> get comments => throw _privateConstructorUsedError;
  Comment? get postComment => throw _privateConstructorUsedError;
  String get imageUser => throw _privateConstructorUsedError;
  CommentResponse? get data => throw _privateConstructorUsedError;
  CommentResponse? get dataLoad => throw _privateConstructorUsedError;
  List<ResultObj>? get resultObjs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentStateDataCopyWith<CommentStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentStateDataCopyWith<$Res> {
  factory $CommentStateDataCopyWith(
          CommentStateData value, $Res Function(CommentStateData) then) =
      _$CommentStateDataCopyWithImpl<$Res, CommentStateData>;
  @useResult
  $Res call(
      {String error,
      List<Comment> comments,
      Comment? postComment,
      String imageUser,
      CommentResponse? data,
      CommentResponse? dataLoad,
      List<ResultObj>? resultObjs});
}

/// @nodoc
class _$CommentStateDataCopyWithImpl<$Res, $Val extends CommentStateData>
    implements $CommentStateDataCopyWith<$Res> {
  _$CommentStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? comments = null,
    Object? postComment = freezed,
    Object? imageUser = null,
    Object? data = freezed,
    Object? dataLoad = freezed,
    Object? resultObjs = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      postComment: freezed == postComment
          ? _value.postComment
          : postComment // ignore: cast_nullable_to_non_nullable
              as Comment?,
      imageUser: null == imageUser
          ? _value.imageUser
          : imageUser // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CommentResponse?,
      dataLoad: freezed == dataLoad
          ? _value.dataLoad
          : dataLoad // ignore: cast_nullable_to_non_nullable
              as CommentResponse?,
      resultObjs: freezed == resultObjs
          ? _value.resultObjs
          : resultObjs // ignore: cast_nullable_to_non_nullable
              as List<ResultObj>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentStateDataImplCopyWith<$Res>
    implements $CommentStateDataCopyWith<$Res> {
  factory _$$CommentStateDataImplCopyWith(_$CommentStateDataImpl value,
          $Res Function(_$CommentStateDataImpl) then) =
      __$$CommentStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      List<Comment> comments,
      Comment? postComment,
      String imageUser,
      CommentResponse? data,
      CommentResponse? dataLoad,
      List<ResultObj>? resultObjs});
}

/// @nodoc
class __$$CommentStateDataImplCopyWithImpl<$Res>
    extends _$CommentStateDataCopyWithImpl<$Res, _$CommentStateDataImpl>
    implements _$$CommentStateDataImplCopyWith<$Res> {
  __$$CommentStateDataImplCopyWithImpl(_$CommentStateDataImpl _value,
      $Res Function(_$CommentStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? comments = null,
    Object? postComment = freezed,
    Object? imageUser = null,
    Object? data = freezed,
    Object? dataLoad = freezed,
    Object? resultObjs = freezed,
  }) {
    return _then(_$CommentStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      postComment: freezed == postComment
          ? _value.postComment
          : postComment // ignore: cast_nullable_to_non_nullable
              as Comment?,
      imageUser: null == imageUser
          ? _value.imageUser
          : imageUser // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CommentResponse?,
      dataLoad: freezed == dataLoad
          ? _value.dataLoad
          : dataLoad // ignore: cast_nullable_to_non_nullable
              as CommentResponse?,
      resultObjs: freezed == resultObjs
          ? _value._resultObjs
          : resultObjs // ignore: cast_nullable_to_non_nullable
              as List<ResultObj>?,
    ));
  }
}

/// @nodoc

class _$CommentStateDataImpl implements _CommentStateData {
  const _$CommentStateDataImpl(
      {this.error = '',
      final List<Comment> comments = const [],
      this.postComment,
      this.imageUser = '',
      this.data,
      this.dataLoad,
      final List<ResultObj>? resultObjs})
      : _comments = comments,
        _resultObjs = resultObjs;

  @override
  @JsonKey()
  final String error;
  final List<Comment> _comments;
  @override
  @JsonKey()
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final Comment? postComment;
  @override
  @JsonKey()
  final String imageUser;
  @override
  final CommentResponse? data;
  @override
  final CommentResponse? dataLoad;
  final List<ResultObj>? _resultObjs;
  @override
  List<ResultObj>? get resultObjs {
    final value = _resultObjs;
    if (value == null) return null;
    if (_resultObjs is EqualUnmodifiableListView) return _resultObjs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CommentStateData(error: $error, comments: $comments, postComment: $postComment, imageUser: $imageUser, data: $data, dataLoad: $dataLoad, resultObjs: $resultObjs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.postComment, postComment) ||
                other.postComment == postComment) &&
            (identical(other.imageUser, imageUser) ||
                other.imageUser == imageUser) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.dataLoad, dataLoad) ||
                other.dataLoad == dataLoad) &&
            const DeepCollectionEquality()
                .equals(other._resultObjs, _resultObjs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      error,
      const DeepCollectionEquality().hash(_comments),
      postComment,
      imageUser,
      data,
      dataLoad,
      const DeepCollectionEquality().hash(_resultObjs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentStateDataImplCopyWith<_$CommentStateDataImpl> get copyWith =>
      __$$CommentStateDataImplCopyWithImpl<_$CommentStateDataImpl>(
          this, _$identity);
}

abstract class _CommentStateData implements CommentStateData {
  const factory _CommentStateData(
      {final String error,
      final List<Comment> comments,
      final Comment? postComment,
      final String imageUser,
      final CommentResponse? data,
      final CommentResponse? dataLoad,
      final List<ResultObj>? resultObjs}) = _$CommentStateDataImpl;

  @override
  String get error;
  @override
  List<Comment> get comments;
  @override
  Comment? get postComment;
  @override
  String get imageUser;
  @override
  CommentResponse? get data;
  @override
  CommentResponse? get dataLoad;
  @override
  List<ResultObj>? get resultObjs;
  @override
  @JsonKey(ignore: true)
  _$$CommentStateDataImplCopyWith<_$CommentStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentState {
  CommentStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommentStateData data) initial,
    required TResult Function(CommentStateData data) getError,
    required TResult Function(CommentStateData data) success,
    required TResult Function(CommentStateData data) postComment,
    required TResult Function(CommentStateData data) listComment,
    required TResult Function(CommentStateData data) loadImageUser,
    required TResult Function(CommentStateData data) loadCommentHubConnection,
    required TResult Function(CommentStateData data) loadComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommentStateData data)? initial,
    TResult? Function(CommentStateData data)? getError,
    TResult? Function(CommentStateData data)? success,
    TResult? Function(CommentStateData data)? postComment,
    TResult? Function(CommentStateData data)? listComment,
    TResult? Function(CommentStateData data)? loadImageUser,
    TResult? Function(CommentStateData data)? loadCommentHubConnection,
    TResult? Function(CommentStateData data)? loadComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommentStateData data)? initial,
    TResult Function(CommentStateData data)? getError,
    TResult Function(CommentStateData data)? success,
    TResult Function(CommentStateData data)? postComment,
    TResult Function(CommentStateData data)? listComment,
    TResult Function(CommentStateData data)? loadImageUser,
    TResult Function(CommentStateData data)? loadCommentHubConnection,
    TResult Function(CommentStateData data)? loadComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(PostComment value) postComment,
    required TResult Function(ListComment value) listComment,
    required TResult Function(LoadImageUser value) loadImageUser,
    required TResult Function(LoadCommentHubConnection value)
        loadCommentHubConnection,
    required TResult Function(LoadComment value) loadComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(PostComment value)? postComment,
    TResult? Function(ListComment value)? listComment,
    TResult? Function(LoadImageUser value)? loadImageUser,
    TResult? Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult? Function(LoadComment value)? loadComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(PostComment value)? postComment,
    TResult Function(ListComment value)? listComment,
    TResult Function(LoadImageUser value)? loadImageUser,
    TResult Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult Function(LoadComment value)? loadComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentStateCopyWith<CommentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentStateCopyWith<$Res> {
  factory $CommentStateCopyWith(
          CommentState value, $Res Function(CommentState) then) =
      _$CommentStateCopyWithImpl<$Res, CommentState>;
  @useResult
  $Res call({CommentStateData data});

  $CommentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CommentStateCopyWithImpl<$Res, $Val extends CommentState>
    implements $CommentStateCopyWith<$Res> {
  _$CommentStateCopyWithImpl(this._value, this._then);

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
              as CommentStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentStateDataCopyWith<$Res> get data {
    return $CommentStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CommentStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentStateData data});

  @override
  $CommentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$InitialImpl>
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
              as CommentStateData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({required this.data});

  @override
  final CommentStateData data;

  @override
  String toString() {
    return 'CommentState.initial(data: $data)';
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
    required TResult Function(CommentStateData data) initial,
    required TResult Function(CommentStateData data) getError,
    required TResult Function(CommentStateData data) success,
    required TResult Function(CommentStateData data) postComment,
    required TResult Function(CommentStateData data) listComment,
    required TResult Function(CommentStateData data) loadImageUser,
    required TResult Function(CommentStateData data) loadCommentHubConnection,
    required TResult Function(CommentStateData data) loadComment,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommentStateData data)? initial,
    TResult? Function(CommentStateData data)? getError,
    TResult? Function(CommentStateData data)? success,
    TResult? Function(CommentStateData data)? postComment,
    TResult? Function(CommentStateData data)? listComment,
    TResult? Function(CommentStateData data)? loadImageUser,
    TResult? Function(CommentStateData data)? loadCommentHubConnection,
    TResult? Function(CommentStateData data)? loadComment,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommentStateData data)? initial,
    TResult Function(CommentStateData data)? getError,
    TResult Function(CommentStateData data)? success,
    TResult Function(CommentStateData data)? postComment,
    TResult Function(CommentStateData data)? listComment,
    TResult Function(CommentStateData data)? loadImageUser,
    TResult Function(CommentStateData data)? loadCommentHubConnection,
    TResult Function(CommentStateData data)? loadComment,
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
    required TResult Function(Success value) success,
    required TResult Function(PostComment value) postComment,
    required TResult Function(ListComment value) listComment,
    required TResult Function(LoadImageUser value) loadImageUser,
    required TResult Function(LoadCommentHubConnection value)
        loadCommentHubConnection,
    required TResult Function(LoadComment value) loadComment,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(PostComment value)? postComment,
    TResult? Function(ListComment value)? listComment,
    TResult? Function(LoadImageUser value)? loadImageUser,
    TResult? Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult? Function(LoadComment value)? loadComment,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(PostComment value)? postComment,
    TResult Function(ListComment value)? listComment,
    TResult Function(LoadImageUser value)? loadImageUser,
    TResult Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult Function(LoadComment value)? loadComment,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CommentState {
  const factory Initial({required final CommentStateData data}) = _$InitialImpl;

  @override
  CommentStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $CommentStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentStateData data});

  @override
  $CommentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$GetErrorImpl>
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
              as CommentStateData,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl implements GetError {
  const _$GetErrorImpl({required this.data});

  @override
  final CommentStateData data;

  @override
  String toString() {
    return 'CommentState.getError(data: $data)';
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
    required TResult Function(CommentStateData data) initial,
    required TResult Function(CommentStateData data) getError,
    required TResult Function(CommentStateData data) success,
    required TResult Function(CommentStateData data) postComment,
    required TResult Function(CommentStateData data) listComment,
    required TResult Function(CommentStateData data) loadImageUser,
    required TResult Function(CommentStateData data) loadCommentHubConnection,
    required TResult Function(CommentStateData data) loadComment,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommentStateData data)? initial,
    TResult? Function(CommentStateData data)? getError,
    TResult? Function(CommentStateData data)? success,
    TResult? Function(CommentStateData data)? postComment,
    TResult? Function(CommentStateData data)? listComment,
    TResult? Function(CommentStateData data)? loadImageUser,
    TResult? Function(CommentStateData data)? loadCommentHubConnection,
    TResult? Function(CommentStateData data)? loadComment,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommentStateData data)? initial,
    TResult Function(CommentStateData data)? getError,
    TResult Function(CommentStateData data)? success,
    TResult Function(CommentStateData data)? postComment,
    TResult Function(CommentStateData data)? listComment,
    TResult Function(CommentStateData data)? loadImageUser,
    TResult Function(CommentStateData data)? loadCommentHubConnection,
    TResult Function(CommentStateData data)? loadComment,
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
    required TResult Function(Success value) success,
    required TResult Function(PostComment value) postComment,
    required TResult Function(ListComment value) listComment,
    required TResult Function(LoadImageUser value) loadImageUser,
    required TResult Function(LoadCommentHubConnection value)
        loadCommentHubConnection,
    required TResult Function(LoadComment value) loadComment,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(PostComment value)? postComment,
    TResult? Function(ListComment value)? listComment,
    TResult? Function(LoadImageUser value)? loadImageUser,
    TResult? Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult? Function(LoadComment value)? loadComment,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(PostComment value)? postComment,
    TResult Function(ListComment value)? listComment,
    TResult Function(LoadImageUser value)? loadImageUser,
    TResult Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult Function(LoadComment value)? loadComment,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements CommentState {
  const factory GetError({required final CommentStateData data}) =
      _$GetErrorImpl;

  @override
  CommentStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $CommentStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentStateData data});

  @override
  $CommentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$SuccessImpl>
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
              as CommentStateData,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({required this.data});

  @override
  final CommentStateData data;

  @override
  String toString() {
    return 'CommentState.success(data: $data)';
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
    required TResult Function(CommentStateData data) initial,
    required TResult Function(CommentStateData data) getError,
    required TResult Function(CommentStateData data) success,
    required TResult Function(CommentStateData data) postComment,
    required TResult Function(CommentStateData data) listComment,
    required TResult Function(CommentStateData data) loadImageUser,
    required TResult Function(CommentStateData data) loadCommentHubConnection,
    required TResult Function(CommentStateData data) loadComment,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommentStateData data)? initial,
    TResult? Function(CommentStateData data)? getError,
    TResult? Function(CommentStateData data)? success,
    TResult? Function(CommentStateData data)? postComment,
    TResult? Function(CommentStateData data)? listComment,
    TResult? Function(CommentStateData data)? loadImageUser,
    TResult? Function(CommentStateData data)? loadCommentHubConnection,
    TResult? Function(CommentStateData data)? loadComment,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommentStateData data)? initial,
    TResult Function(CommentStateData data)? getError,
    TResult Function(CommentStateData data)? success,
    TResult Function(CommentStateData data)? postComment,
    TResult Function(CommentStateData data)? listComment,
    TResult Function(CommentStateData data)? loadImageUser,
    TResult Function(CommentStateData data)? loadCommentHubConnection,
    TResult Function(CommentStateData data)? loadComment,
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
    required TResult Function(Success value) success,
    required TResult Function(PostComment value) postComment,
    required TResult Function(ListComment value) listComment,
    required TResult Function(LoadImageUser value) loadImageUser,
    required TResult Function(LoadCommentHubConnection value)
        loadCommentHubConnection,
    required TResult Function(LoadComment value) loadComment,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(PostComment value)? postComment,
    TResult? Function(ListComment value)? listComment,
    TResult? Function(LoadImageUser value)? loadImageUser,
    TResult? Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult? Function(LoadComment value)? loadComment,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(PostComment value)? postComment,
    TResult Function(ListComment value)? listComment,
    TResult Function(LoadImageUser value)? loadImageUser,
    TResult Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult Function(LoadComment value)? loadComment,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements CommentState {
  const factory Success({required final CommentStateData data}) = _$SuccessImpl;

  @override
  CommentStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostCommentImplCopyWith<$Res>
    implements $CommentStateCopyWith<$Res> {
  factory _$$PostCommentImplCopyWith(
          _$PostCommentImpl value, $Res Function(_$PostCommentImpl) then) =
      __$$PostCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentStateData data});

  @override
  $CommentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PostCommentImplCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$PostCommentImpl>
    implements _$$PostCommentImplCopyWith<$Res> {
  __$$PostCommentImplCopyWithImpl(
      _$PostCommentImpl _value, $Res Function(_$PostCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PostCommentImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CommentStateData,
    ));
  }
}

/// @nodoc

class _$PostCommentImpl implements PostComment {
  const _$PostCommentImpl({required this.data});

  @override
  final CommentStateData data;

  @override
  String toString() {
    return 'CommentState.postComment(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCommentImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCommentImplCopyWith<_$PostCommentImpl> get copyWith =>
      __$$PostCommentImplCopyWithImpl<_$PostCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommentStateData data) initial,
    required TResult Function(CommentStateData data) getError,
    required TResult Function(CommentStateData data) success,
    required TResult Function(CommentStateData data) postComment,
    required TResult Function(CommentStateData data) listComment,
    required TResult Function(CommentStateData data) loadImageUser,
    required TResult Function(CommentStateData data) loadCommentHubConnection,
    required TResult Function(CommentStateData data) loadComment,
  }) {
    return postComment(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommentStateData data)? initial,
    TResult? Function(CommentStateData data)? getError,
    TResult? Function(CommentStateData data)? success,
    TResult? Function(CommentStateData data)? postComment,
    TResult? Function(CommentStateData data)? listComment,
    TResult? Function(CommentStateData data)? loadImageUser,
    TResult? Function(CommentStateData data)? loadCommentHubConnection,
    TResult? Function(CommentStateData data)? loadComment,
  }) {
    return postComment?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommentStateData data)? initial,
    TResult Function(CommentStateData data)? getError,
    TResult Function(CommentStateData data)? success,
    TResult Function(CommentStateData data)? postComment,
    TResult Function(CommentStateData data)? listComment,
    TResult Function(CommentStateData data)? loadImageUser,
    TResult Function(CommentStateData data)? loadCommentHubConnection,
    TResult Function(CommentStateData data)? loadComment,
    required TResult orElse(),
  }) {
    if (postComment != null) {
      return postComment(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(PostComment value) postComment,
    required TResult Function(ListComment value) listComment,
    required TResult Function(LoadImageUser value) loadImageUser,
    required TResult Function(LoadCommentHubConnection value)
        loadCommentHubConnection,
    required TResult Function(LoadComment value) loadComment,
  }) {
    return postComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(PostComment value)? postComment,
    TResult? Function(ListComment value)? listComment,
    TResult? Function(LoadImageUser value)? loadImageUser,
    TResult? Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult? Function(LoadComment value)? loadComment,
  }) {
    return postComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(PostComment value)? postComment,
    TResult Function(ListComment value)? listComment,
    TResult Function(LoadImageUser value)? loadImageUser,
    TResult Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult Function(LoadComment value)? loadComment,
    required TResult orElse(),
  }) {
    if (postComment != null) {
      return postComment(this);
    }
    return orElse();
  }
}

abstract class PostComment implements CommentState {
  const factory PostComment({required final CommentStateData data}) =
      _$PostCommentImpl;

  @override
  CommentStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$PostCommentImplCopyWith<_$PostCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListCommentImplCopyWith<$Res>
    implements $CommentStateCopyWith<$Res> {
  factory _$$ListCommentImplCopyWith(
          _$ListCommentImpl value, $Res Function(_$ListCommentImpl) then) =
      __$$ListCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentStateData data});

  @override
  $CommentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ListCommentImplCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$ListCommentImpl>
    implements _$$ListCommentImplCopyWith<$Res> {
  __$$ListCommentImplCopyWithImpl(
      _$ListCommentImpl _value, $Res Function(_$ListCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ListCommentImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CommentStateData,
    ));
  }
}

/// @nodoc

class _$ListCommentImpl implements ListComment {
  const _$ListCommentImpl({required this.data});

  @override
  final CommentStateData data;

  @override
  String toString() {
    return 'CommentState.listComment(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListCommentImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListCommentImplCopyWith<_$ListCommentImpl> get copyWith =>
      __$$ListCommentImplCopyWithImpl<_$ListCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommentStateData data) initial,
    required TResult Function(CommentStateData data) getError,
    required TResult Function(CommentStateData data) success,
    required TResult Function(CommentStateData data) postComment,
    required TResult Function(CommentStateData data) listComment,
    required TResult Function(CommentStateData data) loadImageUser,
    required TResult Function(CommentStateData data) loadCommentHubConnection,
    required TResult Function(CommentStateData data) loadComment,
  }) {
    return listComment(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommentStateData data)? initial,
    TResult? Function(CommentStateData data)? getError,
    TResult? Function(CommentStateData data)? success,
    TResult? Function(CommentStateData data)? postComment,
    TResult? Function(CommentStateData data)? listComment,
    TResult? Function(CommentStateData data)? loadImageUser,
    TResult? Function(CommentStateData data)? loadCommentHubConnection,
    TResult? Function(CommentStateData data)? loadComment,
  }) {
    return listComment?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommentStateData data)? initial,
    TResult Function(CommentStateData data)? getError,
    TResult Function(CommentStateData data)? success,
    TResult Function(CommentStateData data)? postComment,
    TResult Function(CommentStateData data)? listComment,
    TResult Function(CommentStateData data)? loadImageUser,
    TResult Function(CommentStateData data)? loadCommentHubConnection,
    TResult Function(CommentStateData data)? loadComment,
    required TResult orElse(),
  }) {
    if (listComment != null) {
      return listComment(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(PostComment value) postComment,
    required TResult Function(ListComment value) listComment,
    required TResult Function(LoadImageUser value) loadImageUser,
    required TResult Function(LoadCommentHubConnection value)
        loadCommentHubConnection,
    required TResult Function(LoadComment value) loadComment,
  }) {
    return listComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(PostComment value)? postComment,
    TResult? Function(ListComment value)? listComment,
    TResult? Function(LoadImageUser value)? loadImageUser,
    TResult? Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult? Function(LoadComment value)? loadComment,
  }) {
    return listComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(PostComment value)? postComment,
    TResult Function(ListComment value)? listComment,
    TResult Function(LoadImageUser value)? loadImageUser,
    TResult Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult Function(LoadComment value)? loadComment,
    required TResult orElse(),
  }) {
    if (listComment != null) {
      return listComment(this);
    }
    return orElse();
  }
}

abstract class ListComment implements CommentState {
  const factory ListComment({required final CommentStateData data}) =
      _$ListCommentImpl;

  @override
  CommentStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$ListCommentImplCopyWith<_$ListCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadImageUserImplCopyWith<$Res>
    implements $CommentStateCopyWith<$Res> {
  factory _$$LoadImageUserImplCopyWith(
          _$LoadImageUserImpl value, $Res Function(_$LoadImageUserImpl) then) =
      __$$LoadImageUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentStateData data});

  @override
  $CommentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadImageUserImplCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$LoadImageUserImpl>
    implements _$$LoadImageUserImplCopyWith<$Res> {
  __$$LoadImageUserImplCopyWithImpl(
      _$LoadImageUserImpl _value, $Res Function(_$LoadImageUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadImageUserImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CommentStateData,
    ));
  }
}

/// @nodoc

class _$LoadImageUserImpl implements LoadImageUser {
  const _$LoadImageUserImpl({required this.data});

  @override
  final CommentStateData data;

  @override
  String toString() {
    return 'CommentState.loadImageUser(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadImageUserImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadImageUserImplCopyWith<_$LoadImageUserImpl> get copyWith =>
      __$$LoadImageUserImplCopyWithImpl<_$LoadImageUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommentStateData data) initial,
    required TResult Function(CommentStateData data) getError,
    required TResult Function(CommentStateData data) success,
    required TResult Function(CommentStateData data) postComment,
    required TResult Function(CommentStateData data) listComment,
    required TResult Function(CommentStateData data) loadImageUser,
    required TResult Function(CommentStateData data) loadCommentHubConnection,
    required TResult Function(CommentStateData data) loadComment,
  }) {
    return loadImageUser(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommentStateData data)? initial,
    TResult? Function(CommentStateData data)? getError,
    TResult? Function(CommentStateData data)? success,
    TResult? Function(CommentStateData data)? postComment,
    TResult? Function(CommentStateData data)? listComment,
    TResult? Function(CommentStateData data)? loadImageUser,
    TResult? Function(CommentStateData data)? loadCommentHubConnection,
    TResult? Function(CommentStateData data)? loadComment,
  }) {
    return loadImageUser?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommentStateData data)? initial,
    TResult Function(CommentStateData data)? getError,
    TResult Function(CommentStateData data)? success,
    TResult Function(CommentStateData data)? postComment,
    TResult Function(CommentStateData data)? listComment,
    TResult Function(CommentStateData data)? loadImageUser,
    TResult Function(CommentStateData data)? loadCommentHubConnection,
    TResult Function(CommentStateData data)? loadComment,
    required TResult orElse(),
  }) {
    if (loadImageUser != null) {
      return loadImageUser(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(PostComment value) postComment,
    required TResult Function(ListComment value) listComment,
    required TResult Function(LoadImageUser value) loadImageUser,
    required TResult Function(LoadCommentHubConnection value)
        loadCommentHubConnection,
    required TResult Function(LoadComment value) loadComment,
  }) {
    return loadImageUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(PostComment value)? postComment,
    TResult? Function(ListComment value)? listComment,
    TResult? Function(LoadImageUser value)? loadImageUser,
    TResult? Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult? Function(LoadComment value)? loadComment,
  }) {
    return loadImageUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(PostComment value)? postComment,
    TResult Function(ListComment value)? listComment,
    TResult Function(LoadImageUser value)? loadImageUser,
    TResult Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult Function(LoadComment value)? loadComment,
    required TResult orElse(),
  }) {
    if (loadImageUser != null) {
      return loadImageUser(this);
    }
    return orElse();
  }
}

abstract class LoadImageUser implements CommentState {
  const factory LoadImageUser({required final CommentStateData data}) =
      _$LoadImageUserImpl;

  @override
  CommentStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$LoadImageUserImplCopyWith<_$LoadImageUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadCommentHubConnectionImplCopyWith<$Res>
    implements $CommentStateCopyWith<$Res> {
  factory _$$LoadCommentHubConnectionImplCopyWith(
          _$LoadCommentHubConnectionImpl value,
          $Res Function(_$LoadCommentHubConnectionImpl) then) =
      __$$LoadCommentHubConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentStateData data});

  @override
  $CommentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadCommentHubConnectionImplCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$LoadCommentHubConnectionImpl>
    implements _$$LoadCommentHubConnectionImplCopyWith<$Res> {
  __$$LoadCommentHubConnectionImplCopyWithImpl(
      _$LoadCommentHubConnectionImpl _value,
      $Res Function(_$LoadCommentHubConnectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadCommentHubConnectionImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CommentStateData,
    ));
  }
}

/// @nodoc

class _$LoadCommentHubConnectionImpl implements LoadCommentHubConnection {
  const _$LoadCommentHubConnectionImpl({required this.data});

  @override
  final CommentStateData data;

  @override
  String toString() {
    return 'CommentState.loadCommentHubConnection(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCommentHubConnectionImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCommentHubConnectionImplCopyWith<_$LoadCommentHubConnectionImpl>
      get copyWith => __$$LoadCommentHubConnectionImplCopyWithImpl<
          _$LoadCommentHubConnectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommentStateData data) initial,
    required TResult Function(CommentStateData data) getError,
    required TResult Function(CommentStateData data) success,
    required TResult Function(CommentStateData data) postComment,
    required TResult Function(CommentStateData data) listComment,
    required TResult Function(CommentStateData data) loadImageUser,
    required TResult Function(CommentStateData data) loadCommentHubConnection,
    required TResult Function(CommentStateData data) loadComment,
  }) {
    return loadCommentHubConnection(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommentStateData data)? initial,
    TResult? Function(CommentStateData data)? getError,
    TResult? Function(CommentStateData data)? success,
    TResult? Function(CommentStateData data)? postComment,
    TResult? Function(CommentStateData data)? listComment,
    TResult? Function(CommentStateData data)? loadImageUser,
    TResult? Function(CommentStateData data)? loadCommentHubConnection,
    TResult? Function(CommentStateData data)? loadComment,
  }) {
    return loadCommentHubConnection?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommentStateData data)? initial,
    TResult Function(CommentStateData data)? getError,
    TResult Function(CommentStateData data)? success,
    TResult Function(CommentStateData data)? postComment,
    TResult Function(CommentStateData data)? listComment,
    TResult Function(CommentStateData data)? loadImageUser,
    TResult Function(CommentStateData data)? loadCommentHubConnection,
    TResult Function(CommentStateData data)? loadComment,
    required TResult orElse(),
  }) {
    if (loadCommentHubConnection != null) {
      return loadCommentHubConnection(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(PostComment value) postComment,
    required TResult Function(ListComment value) listComment,
    required TResult Function(LoadImageUser value) loadImageUser,
    required TResult Function(LoadCommentHubConnection value)
        loadCommentHubConnection,
    required TResult Function(LoadComment value) loadComment,
  }) {
    return loadCommentHubConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(PostComment value)? postComment,
    TResult? Function(ListComment value)? listComment,
    TResult? Function(LoadImageUser value)? loadImageUser,
    TResult? Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult? Function(LoadComment value)? loadComment,
  }) {
    return loadCommentHubConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(PostComment value)? postComment,
    TResult Function(ListComment value)? listComment,
    TResult Function(LoadImageUser value)? loadImageUser,
    TResult Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult Function(LoadComment value)? loadComment,
    required TResult orElse(),
  }) {
    if (loadCommentHubConnection != null) {
      return loadCommentHubConnection(this);
    }
    return orElse();
  }
}

abstract class LoadCommentHubConnection implements CommentState {
  const factory LoadCommentHubConnection(
      {required final CommentStateData data}) = _$LoadCommentHubConnectionImpl;

  @override
  CommentStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$LoadCommentHubConnectionImplCopyWith<_$LoadCommentHubConnectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadCommentImplCopyWith<$Res>
    implements $CommentStateCopyWith<$Res> {
  factory _$$LoadCommentImplCopyWith(
          _$LoadCommentImpl value, $Res Function(_$LoadCommentImpl) then) =
      __$$LoadCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentStateData data});

  @override
  $CommentStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadCommentImplCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$LoadCommentImpl>
    implements _$$LoadCommentImplCopyWith<$Res> {
  __$$LoadCommentImplCopyWithImpl(
      _$LoadCommentImpl _value, $Res Function(_$LoadCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadCommentImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CommentStateData,
    ));
  }
}

/// @nodoc

class _$LoadCommentImpl implements LoadComment {
  const _$LoadCommentImpl({required this.data});

  @override
  final CommentStateData data;

  @override
  String toString() {
    return 'CommentState.loadComment(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCommentImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCommentImplCopyWith<_$LoadCommentImpl> get copyWith =>
      __$$LoadCommentImplCopyWithImpl<_$LoadCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommentStateData data) initial,
    required TResult Function(CommentStateData data) getError,
    required TResult Function(CommentStateData data) success,
    required TResult Function(CommentStateData data) postComment,
    required TResult Function(CommentStateData data) listComment,
    required TResult Function(CommentStateData data) loadImageUser,
    required TResult Function(CommentStateData data) loadCommentHubConnection,
    required TResult Function(CommentStateData data) loadComment,
  }) {
    return loadComment(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommentStateData data)? initial,
    TResult? Function(CommentStateData data)? getError,
    TResult? Function(CommentStateData data)? success,
    TResult? Function(CommentStateData data)? postComment,
    TResult? Function(CommentStateData data)? listComment,
    TResult? Function(CommentStateData data)? loadImageUser,
    TResult? Function(CommentStateData data)? loadCommentHubConnection,
    TResult? Function(CommentStateData data)? loadComment,
  }) {
    return loadComment?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommentStateData data)? initial,
    TResult Function(CommentStateData data)? getError,
    TResult Function(CommentStateData data)? success,
    TResult Function(CommentStateData data)? postComment,
    TResult Function(CommentStateData data)? listComment,
    TResult Function(CommentStateData data)? loadImageUser,
    TResult Function(CommentStateData data)? loadCommentHubConnection,
    TResult Function(CommentStateData data)? loadComment,
    required TResult orElse(),
  }) {
    if (loadComment != null) {
      return loadComment(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(PostComment value) postComment,
    required TResult Function(ListComment value) listComment,
    required TResult Function(LoadImageUser value) loadImageUser,
    required TResult Function(LoadCommentHubConnection value)
        loadCommentHubConnection,
    required TResult Function(LoadComment value) loadComment,
  }) {
    return loadComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(PostComment value)? postComment,
    TResult? Function(ListComment value)? listComment,
    TResult? Function(LoadImageUser value)? loadImageUser,
    TResult? Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult? Function(LoadComment value)? loadComment,
  }) {
    return loadComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(PostComment value)? postComment,
    TResult Function(ListComment value)? listComment,
    TResult Function(LoadImageUser value)? loadImageUser,
    TResult Function(LoadCommentHubConnection value)? loadCommentHubConnection,
    TResult Function(LoadComment value)? loadComment,
    required TResult orElse(),
  }) {
    if (loadComment != null) {
      return loadComment(this);
    }
    return orElse();
  }
}

abstract class LoadComment implements CommentState {
  const factory LoadComment({required final CommentStateData data}) =
      _$LoadCommentImpl;

  @override
  CommentStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$LoadCommentImplCopyWith<_$LoadCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
