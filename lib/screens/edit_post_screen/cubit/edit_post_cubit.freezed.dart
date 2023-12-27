// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_post_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditPostStateData {
  String? get error => throw _privateConstructorUsedError;
  int get success => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;
  AddPostResponse? get data => throw _privateConstructorUsedError;
  List<TopicItem> get listTopic => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditPostStateDataCopyWith<EditPostStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPostStateDataCopyWith<$Res> {
  factory $EditPostStateDataCopyWith(
          EditPostStateData value, $Res Function(EditPostStateData) then) =
      _$EditPostStateDataCopyWithImpl<$Res, EditPostStateData>;
  @useResult
  $Res call(
      {String? error,
      int success,
      StatusType status,
      File? image,
      AddPostResponse? data,
      List<TopicItem> listTopic});
}

/// @nodoc
class _$EditPostStateDataCopyWithImpl<$Res, $Val extends EditPostStateData>
    implements $EditPostStateDataCopyWith<$Res> {
  _$EditPostStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? success = null,
    Object? status = null,
    Object? image = freezed,
    Object? data = freezed,
    Object? listTopic = null,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddPostResponse?,
      listTopic: null == listTopic
          ? _value.listTopic
          : listTopic // ignore: cast_nullable_to_non_nullable
              as List<TopicItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditPostStateDataImplCopyWith<$Res>
    implements $EditPostStateDataCopyWith<$Res> {
  factory _$$EditPostStateDataImplCopyWith(_$EditPostStateDataImpl value,
          $Res Function(_$EditPostStateDataImpl) then) =
      __$$EditPostStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? error,
      int success,
      StatusType status,
      File? image,
      AddPostResponse? data,
      List<TopicItem> listTopic});
}

/// @nodoc
class __$$EditPostStateDataImplCopyWithImpl<$Res>
    extends _$EditPostStateDataCopyWithImpl<$Res, _$EditPostStateDataImpl>
    implements _$$EditPostStateDataImplCopyWith<$Res> {
  __$$EditPostStateDataImplCopyWithImpl(_$EditPostStateDataImpl _value,
      $Res Function(_$EditPostStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? success = null,
    Object? status = null,
    Object? image = freezed,
    Object? data = freezed,
    Object? listTopic = null,
  }) {
    return _then(_$EditPostStateDataImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddPostResponse?,
      listTopic: null == listTopic
          ? _value._listTopic
          : listTopic // ignore: cast_nullable_to_non_nullable
              as List<TopicItem>,
    ));
  }
}

/// @nodoc

class _$EditPostStateDataImpl implements _EditPostStateData {
  const _$EditPostStateDataImpl(
      {this.error,
      this.success = 0,
      this.status = StatusType.init,
      this.image,
      this.data,
      final List<TopicItem> listTopic = const []})
      : _listTopic = listTopic;

  @override
  final String? error;
  @override
  @JsonKey()
  final int success;
  @override
  @JsonKey()
  final StatusType status;
  @override
  final File? image;
  @override
  final AddPostResponse? data;
  final List<TopicItem> _listTopic;
  @override
  @JsonKey()
  List<TopicItem> get listTopic {
    if (_listTopic is EqualUnmodifiableListView) return _listTopic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTopic);
  }

  @override
  String toString() {
    return 'EditPostStateData(error: $error, success: $success, status: $status, image: $image, data: $data, listTopic: $listTopic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditPostStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality()
                .equals(other._listTopic, _listTopic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, success, status, image,
      data, const DeepCollectionEquality().hash(_listTopic));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditPostStateDataImplCopyWith<_$EditPostStateDataImpl> get copyWith =>
      __$$EditPostStateDataImplCopyWithImpl<_$EditPostStateDataImpl>(
          this, _$identity);
}

abstract class _EditPostStateData implements EditPostStateData {
  const factory _EditPostStateData(
      {final String? error,
      final int success,
      final StatusType status,
      final File? image,
      final AddPostResponse? data,
      final List<TopicItem> listTopic}) = _$EditPostStateDataImpl;

  @override
  String? get error;
  @override
  int get success;
  @override
  StatusType get status;
  @override
  File? get image;
  @override
  AddPostResponse? get data;
  @override
  List<TopicItem> get listTopic;
  @override
  @JsonKey(ignore: true)
  _$$EditPostStateDataImplCopyWith<_$EditPostStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditPostState {
  EditPostStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditPostStateData data) initial,
    required TResult Function(EditPostStateData data) getError,
    required TResult Function(EditPostStateData data) success,
    required TResult Function(EditPostStateData data) status,
    required TResult Function(EditPostStateData data) getImage,
    required TResult Function(EditPostStateData data) getListTopic,
    required TResult Function(EditPostStateData data) getTopicDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditPostStateData data)? initial,
    TResult? Function(EditPostStateData data)? getError,
    TResult? Function(EditPostStateData data)? success,
    TResult? Function(EditPostStateData data)? status,
    TResult? Function(EditPostStateData data)? getImage,
    TResult? Function(EditPostStateData data)? getListTopic,
    TResult? Function(EditPostStateData data)? getTopicDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditPostStateData data)? initial,
    TResult Function(EditPostStateData data)? getError,
    TResult Function(EditPostStateData data)? success,
    TResult Function(EditPostStateData data)? status,
    TResult Function(EditPostStateData data)? getImage,
    TResult Function(EditPostStateData data)? getListTopic,
    TResult Function(EditPostStateData data)? getTopicDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(Status value) status,
    required TResult Function(GetImage value) getImage,
    required TResult Function(GetListTopic value) getListTopic,
    required TResult Function(GetTopicDetail value) getTopicDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(Status value)? status,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(GetListTopic value)? getListTopic,
    TResult? Function(GetTopicDetail value)? getTopicDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(Status value)? status,
    TResult Function(GetImage value)? getImage,
    TResult Function(GetListTopic value)? getListTopic,
    TResult Function(GetTopicDetail value)? getTopicDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditPostStateCopyWith<EditPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPostStateCopyWith<$Res> {
  factory $EditPostStateCopyWith(
          EditPostState value, $Res Function(EditPostState) then) =
      _$EditPostStateCopyWithImpl<$Res, EditPostState>;
  @useResult
  $Res call({EditPostStateData data});

  $EditPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$EditPostStateCopyWithImpl<$Res, $Val extends EditPostState>
    implements $EditPostStateCopyWith<$Res> {
  _$EditPostStateCopyWithImpl(this._value, this._then);

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
              as EditPostStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EditPostStateDataCopyWith<$Res> get data {
    return $EditPostStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $EditPostStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditPostStateData data});

  @override
  $EditPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EditPostStateCopyWithImpl<$Res, _$InitialImpl>
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
              as EditPostStateData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({required this.data});

  @override
  final EditPostStateData data;

  @override
  String toString() {
    return 'EditPostState.initial(data: $data)';
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
    required TResult Function(EditPostStateData data) initial,
    required TResult Function(EditPostStateData data) getError,
    required TResult Function(EditPostStateData data) success,
    required TResult Function(EditPostStateData data) status,
    required TResult Function(EditPostStateData data) getImage,
    required TResult Function(EditPostStateData data) getListTopic,
    required TResult Function(EditPostStateData data) getTopicDetail,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditPostStateData data)? initial,
    TResult? Function(EditPostStateData data)? getError,
    TResult? Function(EditPostStateData data)? success,
    TResult? Function(EditPostStateData data)? status,
    TResult? Function(EditPostStateData data)? getImage,
    TResult? Function(EditPostStateData data)? getListTopic,
    TResult? Function(EditPostStateData data)? getTopicDetail,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditPostStateData data)? initial,
    TResult Function(EditPostStateData data)? getError,
    TResult Function(EditPostStateData data)? success,
    TResult Function(EditPostStateData data)? status,
    TResult Function(EditPostStateData data)? getImage,
    TResult Function(EditPostStateData data)? getListTopic,
    TResult Function(EditPostStateData data)? getTopicDetail,
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
    required TResult Function(Status value) status,
    required TResult Function(GetImage value) getImage,
    required TResult Function(GetListTopic value) getListTopic,
    required TResult Function(GetTopicDetail value) getTopicDetail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(Status value)? status,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(GetListTopic value)? getListTopic,
    TResult? Function(GetTopicDetail value)? getTopicDetail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(Status value)? status,
    TResult Function(GetImage value)? getImage,
    TResult Function(GetListTopic value)? getListTopic,
    TResult Function(GetTopicDetail value)? getTopicDetail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements EditPostState {
  const factory Initial({required final EditPostStateData data}) =
      _$InitialImpl;

  @override
  EditPostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $EditPostStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditPostStateData data});

  @override
  $EditPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$EditPostStateCopyWithImpl<$Res, _$GetErrorImpl>
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
              as EditPostStateData,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl implements GetError {
  const _$GetErrorImpl({required this.data});

  @override
  final EditPostStateData data;

  @override
  String toString() {
    return 'EditPostState.getError(data: $data)';
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
    required TResult Function(EditPostStateData data) initial,
    required TResult Function(EditPostStateData data) getError,
    required TResult Function(EditPostStateData data) success,
    required TResult Function(EditPostStateData data) status,
    required TResult Function(EditPostStateData data) getImage,
    required TResult Function(EditPostStateData data) getListTopic,
    required TResult Function(EditPostStateData data) getTopicDetail,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditPostStateData data)? initial,
    TResult? Function(EditPostStateData data)? getError,
    TResult? Function(EditPostStateData data)? success,
    TResult? Function(EditPostStateData data)? status,
    TResult? Function(EditPostStateData data)? getImage,
    TResult? Function(EditPostStateData data)? getListTopic,
    TResult? Function(EditPostStateData data)? getTopicDetail,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditPostStateData data)? initial,
    TResult Function(EditPostStateData data)? getError,
    TResult Function(EditPostStateData data)? success,
    TResult Function(EditPostStateData data)? status,
    TResult Function(EditPostStateData data)? getImage,
    TResult Function(EditPostStateData data)? getListTopic,
    TResult Function(EditPostStateData data)? getTopicDetail,
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
    required TResult Function(Status value) status,
    required TResult Function(GetImage value) getImage,
    required TResult Function(GetListTopic value) getListTopic,
    required TResult Function(GetTopicDetail value) getTopicDetail,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(Status value)? status,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(GetListTopic value)? getListTopic,
    TResult? Function(GetTopicDetail value)? getTopicDetail,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(Status value)? status,
    TResult Function(GetImage value)? getImage,
    TResult Function(GetListTopic value)? getListTopic,
    TResult Function(GetTopicDetail value)? getTopicDetail,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements EditPostState {
  const factory GetError({required final EditPostStateData data}) =
      _$GetErrorImpl;

  @override
  EditPostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $EditPostStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditPostStateData data});

  @override
  $EditPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$EditPostStateCopyWithImpl<$Res, _$SuccessImpl>
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
              as EditPostStateData,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({required this.data});

  @override
  final EditPostStateData data;

  @override
  String toString() {
    return 'EditPostState.success(data: $data)';
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
    required TResult Function(EditPostStateData data) initial,
    required TResult Function(EditPostStateData data) getError,
    required TResult Function(EditPostStateData data) success,
    required TResult Function(EditPostStateData data) status,
    required TResult Function(EditPostStateData data) getImage,
    required TResult Function(EditPostStateData data) getListTopic,
    required TResult Function(EditPostStateData data) getTopicDetail,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditPostStateData data)? initial,
    TResult? Function(EditPostStateData data)? getError,
    TResult? Function(EditPostStateData data)? success,
    TResult? Function(EditPostStateData data)? status,
    TResult? Function(EditPostStateData data)? getImage,
    TResult? Function(EditPostStateData data)? getListTopic,
    TResult? Function(EditPostStateData data)? getTopicDetail,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditPostStateData data)? initial,
    TResult Function(EditPostStateData data)? getError,
    TResult Function(EditPostStateData data)? success,
    TResult Function(EditPostStateData data)? status,
    TResult Function(EditPostStateData data)? getImage,
    TResult Function(EditPostStateData data)? getListTopic,
    TResult Function(EditPostStateData data)? getTopicDetail,
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
    required TResult Function(Status value) status,
    required TResult Function(GetImage value) getImage,
    required TResult Function(GetListTopic value) getListTopic,
    required TResult Function(GetTopicDetail value) getTopicDetail,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(Status value)? status,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(GetListTopic value)? getListTopic,
    TResult? Function(GetTopicDetail value)? getTopicDetail,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(Status value)? status,
    TResult Function(GetImage value)? getImage,
    TResult Function(GetListTopic value)? getListTopic,
    TResult Function(GetTopicDetail value)? getTopicDetail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements EditPostState {
  const factory Success({required final EditPostStateData data}) =
      _$SuccessImpl;

  @override
  EditPostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusImplCopyWith<$Res>
    implements $EditPostStateCopyWith<$Res> {
  factory _$$StatusImplCopyWith(
          _$StatusImpl value, $Res Function(_$StatusImpl) then) =
      __$$StatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditPostStateData data});

  @override
  $EditPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$StatusImplCopyWithImpl<$Res>
    extends _$EditPostStateCopyWithImpl<$Res, _$StatusImpl>
    implements _$$StatusImplCopyWith<$Res> {
  __$$StatusImplCopyWithImpl(
      _$StatusImpl _value, $Res Function(_$StatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$StatusImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EditPostStateData,
    ));
  }
}

/// @nodoc

class _$StatusImpl implements Status {
  const _$StatusImpl({required this.data});

  @override
  final EditPostStateData data;

  @override
  String toString() {
    return 'EditPostState.status(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      __$$StatusImplCopyWithImpl<_$StatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditPostStateData data) initial,
    required TResult Function(EditPostStateData data) getError,
    required TResult Function(EditPostStateData data) success,
    required TResult Function(EditPostStateData data) status,
    required TResult Function(EditPostStateData data) getImage,
    required TResult Function(EditPostStateData data) getListTopic,
    required TResult Function(EditPostStateData data) getTopicDetail,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditPostStateData data)? initial,
    TResult? Function(EditPostStateData data)? getError,
    TResult? Function(EditPostStateData data)? success,
    TResult? Function(EditPostStateData data)? status,
    TResult? Function(EditPostStateData data)? getImage,
    TResult? Function(EditPostStateData data)? getListTopic,
    TResult? Function(EditPostStateData data)? getTopicDetail,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditPostStateData data)? initial,
    TResult Function(EditPostStateData data)? getError,
    TResult Function(EditPostStateData data)? success,
    TResult Function(EditPostStateData data)? status,
    TResult Function(EditPostStateData data)? getImage,
    TResult Function(EditPostStateData data)? getListTopic,
    TResult Function(EditPostStateData data)? getTopicDetail,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(Status value) status,
    required TResult Function(GetImage value) getImage,
    required TResult Function(GetListTopic value) getListTopic,
    required TResult Function(GetTopicDetail value) getTopicDetail,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(Status value)? status,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(GetListTopic value)? getListTopic,
    TResult? Function(GetTopicDetail value)? getTopicDetail,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(Status value)? status,
    TResult Function(GetImage value)? getImage,
    TResult Function(GetListTopic value)? getListTopic,
    TResult Function(GetTopicDetail value)? getTopicDetail,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements EditPostState {
  const factory Status({required final EditPostStateData data}) = _$StatusImpl;

  @override
  EditPostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetImageImplCopyWith<$Res>
    implements $EditPostStateCopyWith<$Res> {
  factory _$$GetImageImplCopyWith(
          _$GetImageImpl value, $Res Function(_$GetImageImpl) then) =
      __$$GetImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditPostStateData data});

  @override
  $EditPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetImageImplCopyWithImpl<$Res>
    extends _$EditPostStateCopyWithImpl<$Res, _$GetImageImpl>
    implements _$$GetImageImplCopyWith<$Res> {
  __$$GetImageImplCopyWithImpl(
      _$GetImageImpl _value, $Res Function(_$GetImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetImageImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EditPostStateData,
    ));
  }
}

/// @nodoc

class _$GetImageImpl implements GetImage {
  const _$GetImageImpl({required this.data});

  @override
  final EditPostStateData data;

  @override
  String toString() {
    return 'EditPostState.getImage(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImageImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImageImplCopyWith<_$GetImageImpl> get copyWith =>
      __$$GetImageImplCopyWithImpl<_$GetImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditPostStateData data) initial,
    required TResult Function(EditPostStateData data) getError,
    required TResult Function(EditPostStateData data) success,
    required TResult Function(EditPostStateData data) status,
    required TResult Function(EditPostStateData data) getImage,
    required TResult Function(EditPostStateData data) getListTopic,
    required TResult Function(EditPostStateData data) getTopicDetail,
  }) {
    return getImage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditPostStateData data)? initial,
    TResult? Function(EditPostStateData data)? getError,
    TResult? Function(EditPostStateData data)? success,
    TResult? Function(EditPostStateData data)? status,
    TResult? Function(EditPostStateData data)? getImage,
    TResult? Function(EditPostStateData data)? getListTopic,
    TResult? Function(EditPostStateData data)? getTopicDetail,
  }) {
    return getImage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditPostStateData data)? initial,
    TResult Function(EditPostStateData data)? getError,
    TResult Function(EditPostStateData data)? success,
    TResult Function(EditPostStateData data)? status,
    TResult Function(EditPostStateData data)? getImage,
    TResult Function(EditPostStateData data)? getListTopic,
    TResult Function(EditPostStateData data)? getTopicDetail,
    required TResult orElse(),
  }) {
    if (getImage != null) {
      return getImage(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(Status value) status,
    required TResult Function(GetImage value) getImage,
    required TResult Function(GetListTopic value) getListTopic,
    required TResult Function(GetTopicDetail value) getTopicDetail,
  }) {
    return getImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(Status value)? status,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(GetListTopic value)? getListTopic,
    TResult? Function(GetTopicDetail value)? getTopicDetail,
  }) {
    return getImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(Status value)? status,
    TResult Function(GetImage value)? getImage,
    TResult Function(GetListTopic value)? getListTopic,
    TResult Function(GetTopicDetail value)? getTopicDetail,
    required TResult orElse(),
  }) {
    if (getImage != null) {
      return getImage(this);
    }
    return orElse();
  }
}

abstract class GetImage implements EditPostState {
  const factory GetImage({required final EditPostStateData data}) =
      _$GetImageImpl;

  @override
  EditPostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetImageImplCopyWith<_$GetImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetListTopicImplCopyWith<$Res>
    implements $EditPostStateCopyWith<$Res> {
  factory _$$GetListTopicImplCopyWith(
          _$GetListTopicImpl value, $Res Function(_$GetListTopicImpl) then) =
      __$$GetListTopicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditPostStateData data});

  @override
  $EditPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetListTopicImplCopyWithImpl<$Res>
    extends _$EditPostStateCopyWithImpl<$Res, _$GetListTopicImpl>
    implements _$$GetListTopicImplCopyWith<$Res> {
  __$$GetListTopicImplCopyWithImpl(
      _$GetListTopicImpl _value, $Res Function(_$GetListTopicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetListTopicImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EditPostStateData,
    ));
  }
}

/// @nodoc

class _$GetListTopicImpl implements GetListTopic {
  const _$GetListTopicImpl({required this.data});

  @override
  final EditPostStateData data;

  @override
  String toString() {
    return 'EditPostState.getListTopic(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListTopicImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListTopicImplCopyWith<_$GetListTopicImpl> get copyWith =>
      __$$GetListTopicImplCopyWithImpl<_$GetListTopicImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditPostStateData data) initial,
    required TResult Function(EditPostStateData data) getError,
    required TResult Function(EditPostStateData data) success,
    required TResult Function(EditPostStateData data) status,
    required TResult Function(EditPostStateData data) getImage,
    required TResult Function(EditPostStateData data) getListTopic,
    required TResult Function(EditPostStateData data) getTopicDetail,
  }) {
    return getListTopic(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditPostStateData data)? initial,
    TResult? Function(EditPostStateData data)? getError,
    TResult? Function(EditPostStateData data)? success,
    TResult? Function(EditPostStateData data)? status,
    TResult? Function(EditPostStateData data)? getImage,
    TResult? Function(EditPostStateData data)? getListTopic,
    TResult? Function(EditPostStateData data)? getTopicDetail,
  }) {
    return getListTopic?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditPostStateData data)? initial,
    TResult Function(EditPostStateData data)? getError,
    TResult Function(EditPostStateData data)? success,
    TResult Function(EditPostStateData data)? status,
    TResult Function(EditPostStateData data)? getImage,
    TResult Function(EditPostStateData data)? getListTopic,
    TResult Function(EditPostStateData data)? getTopicDetail,
    required TResult orElse(),
  }) {
    if (getListTopic != null) {
      return getListTopic(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(Status value) status,
    required TResult Function(GetImage value) getImage,
    required TResult Function(GetListTopic value) getListTopic,
    required TResult Function(GetTopicDetail value) getTopicDetail,
  }) {
    return getListTopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(Status value)? status,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(GetListTopic value)? getListTopic,
    TResult? Function(GetTopicDetail value)? getTopicDetail,
  }) {
    return getListTopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(Status value)? status,
    TResult Function(GetImage value)? getImage,
    TResult Function(GetListTopic value)? getListTopic,
    TResult Function(GetTopicDetail value)? getTopicDetail,
    required TResult orElse(),
  }) {
    if (getListTopic != null) {
      return getListTopic(this);
    }
    return orElse();
  }
}

abstract class GetListTopic implements EditPostState {
  const factory GetListTopic({required final EditPostStateData data}) =
      _$GetListTopicImpl;

  @override
  EditPostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetListTopicImplCopyWith<_$GetListTopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTopicDetailImplCopyWith<$Res>
    implements $EditPostStateCopyWith<$Res> {
  factory _$$GetTopicDetailImplCopyWith(_$GetTopicDetailImpl value,
          $Res Function(_$GetTopicDetailImpl) then) =
      __$$GetTopicDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditPostStateData data});

  @override
  $EditPostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetTopicDetailImplCopyWithImpl<$Res>
    extends _$EditPostStateCopyWithImpl<$Res, _$GetTopicDetailImpl>
    implements _$$GetTopicDetailImplCopyWith<$Res> {
  __$$GetTopicDetailImplCopyWithImpl(
      _$GetTopicDetailImpl _value, $Res Function(_$GetTopicDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetTopicDetailImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EditPostStateData,
    ));
  }
}

/// @nodoc

class _$GetTopicDetailImpl implements GetTopicDetail {
  const _$GetTopicDetailImpl({required this.data});

  @override
  final EditPostStateData data;

  @override
  String toString() {
    return 'EditPostState.getTopicDetail(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTopicDetailImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTopicDetailImplCopyWith<_$GetTopicDetailImpl> get copyWith =>
      __$$GetTopicDetailImplCopyWithImpl<_$GetTopicDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditPostStateData data) initial,
    required TResult Function(EditPostStateData data) getError,
    required TResult Function(EditPostStateData data) success,
    required TResult Function(EditPostStateData data) status,
    required TResult Function(EditPostStateData data) getImage,
    required TResult Function(EditPostStateData data) getListTopic,
    required TResult Function(EditPostStateData data) getTopicDetail,
  }) {
    return getTopicDetail(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditPostStateData data)? initial,
    TResult? Function(EditPostStateData data)? getError,
    TResult? Function(EditPostStateData data)? success,
    TResult? Function(EditPostStateData data)? status,
    TResult? Function(EditPostStateData data)? getImage,
    TResult? Function(EditPostStateData data)? getListTopic,
    TResult? Function(EditPostStateData data)? getTopicDetail,
  }) {
    return getTopicDetail?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditPostStateData data)? initial,
    TResult Function(EditPostStateData data)? getError,
    TResult Function(EditPostStateData data)? success,
    TResult Function(EditPostStateData data)? status,
    TResult Function(EditPostStateData data)? getImage,
    TResult Function(EditPostStateData data)? getListTopic,
    TResult Function(EditPostStateData data)? getTopicDetail,
    required TResult orElse(),
  }) {
    if (getTopicDetail != null) {
      return getTopicDetail(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(Status value) status,
    required TResult Function(GetImage value) getImage,
    required TResult Function(GetListTopic value) getListTopic,
    required TResult Function(GetTopicDetail value) getTopicDetail,
  }) {
    return getTopicDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(Status value)? status,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(GetListTopic value)? getListTopic,
    TResult? Function(GetTopicDetail value)? getTopicDetail,
  }) {
    return getTopicDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(Status value)? status,
    TResult Function(GetImage value)? getImage,
    TResult Function(GetListTopic value)? getListTopic,
    TResult Function(GetTopicDetail value)? getTopicDetail,
    required TResult orElse(),
  }) {
    if (getTopicDetail != null) {
      return getTopicDetail(this);
    }
    return orElse();
  }
}

abstract class GetTopicDetail implements EditPostState {
  const factory GetTopicDetail({required final EditPostStateData data}) =
      _$GetTopicDetailImpl;

  @override
  EditPostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetTopicDetailImplCopyWith<_$GetTopicDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
