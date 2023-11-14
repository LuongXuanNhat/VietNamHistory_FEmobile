// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreatePostStateData {
  String? get error => throw _privateConstructorUsedError;
  int get success => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;
  List<TopicItem> get listTopic => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePostStateDataCopyWith<CreatePostStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostStateDataCopyWith<$Res> {
  factory $CreatePostStateDataCopyWith(
          CreatePostStateData value, $Res Function(CreatePostStateData) then) =
      _$CreatePostStateDataCopyWithImpl<$Res, CreatePostStateData>;
  @useResult
  $Res call(
      {String? error,
      int success,
      StatusType status,
      File? image,
      List<TopicItem> listTopic});
}

/// @nodoc
class _$CreatePostStateDataCopyWithImpl<$Res, $Val extends CreatePostStateData>
    implements $CreatePostStateDataCopyWith<$Res> {
  _$CreatePostStateDataCopyWithImpl(this._value, this._then);

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
      listTopic: null == listTopic
          ? _value.listTopic
          : listTopic // ignore: cast_nullable_to_non_nullable
              as List<TopicItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePostStateDataImplCopyWith<$Res>
    implements $CreatePostStateDataCopyWith<$Res> {
  factory _$$CreatePostStateDataImplCopyWith(_$CreatePostStateDataImpl value,
          $Res Function(_$CreatePostStateDataImpl) then) =
      __$$CreatePostStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? error,
      int success,
      StatusType status,
      File? image,
      List<TopicItem> listTopic});
}

/// @nodoc
class __$$CreatePostStateDataImplCopyWithImpl<$Res>
    extends _$CreatePostStateDataCopyWithImpl<$Res, _$CreatePostStateDataImpl>
    implements _$$CreatePostStateDataImplCopyWith<$Res> {
  __$$CreatePostStateDataImplCopyWithImpl(_$CreatePostStateDataImpl _value,
      $Res Function(_$CreatePostStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? success = null,
    Object? status = null,
    Object? image = freezed,
    Object? listTopic = null,
  }) {
    return _then(_$CreatePostStateDataImpl(
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
      listTopic: null == listTopic
          ? _value._listTopic
          : listTopic // ignore: cast_nullable_to_non_nullable
              as List<TopicItem>,
    ));
  }
}

/// @nodoc

class _$CreatePostStateDataImpl implements _CreatePostStateData {
  const _$CreatePostStateDataImpl(
      {this.error,
      this.success = 0,
      this.status = StatusType.init,
      this.image,
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
    return 'CreatePostStateData(error: $error, success: $success, status: $status, image: $image, listTopic: $listTopic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._listTopic, _listTopic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, success, status, image,
      const DeepCollectionEquality().hash(_listTopic));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostStateDataImplCopyWith<_$CreatePostStateDataImpl> get copyWith =>
      __$$CreatePostStateDataImplCopyWithImpl<_$CreatePostStateDataImpl>(
          this, _$identity);
}

abstract class _CreatePostStateData implements CreatePostStateData {
  const factory _CreatePostStateData(
      {final String? error,
      final int success,
      final StatusType status,
      final File? image,
      final List<TopicItem> listTopic}) = _$CreatePostStateDataImpl;

  @override
  String? get error;
  @override
  int get success;
  @override
  StatusType get status;
  @override
  File? get image;
  @override
  List<TopicItem> get listTopic;
  @override
  @JsonKey(ignore: true)
  _$$CreatePostStateDataImplCopyWith<_$CreatePostStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreatePostState {
  CreatePostStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreatePostStateData? data) initial,
    required TResult Function(CreatePostStateData? data) getError,
    required TResult Function(CreatePostStateData? data) success,
    required TResult Function(CreatePostStateData? data) status,
    required TResult Function(CreatePostStateData? data) getImage,
    required TResult Function(CreatePostStateData? data) getListTopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreatePostStateData? data)? initial,
    TResult? Function(CreatePostStateData? data)? getError,
    TResult? Function(CreatePostStateData? data)? success,
    TResult? Function(CreatePostStateData? data)? status,
    TResult? Function(CreatePostStateData? data)? getImage,
    TResult? Function(CreatePostStateData? data)? getListTopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreatePostStateData? data)? initial,
    TResult Function(CreatePostStateData? data)? getError,
    TResult Function(CreatePostStateData? data)? success,
    TResult Function(CreatePostStateData? data)? status,
    TResult Function(CreatePostStateData? data)? getImage,
    TResult Function(CreatePostStateData? data)? getListTopic,
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
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePostStateCopyWith<CreatePostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostStateCopyWith<$Res> {
  factory $CreatePostStateCopyWith(
          CreatePostState value, $Res Function(CreatePostState) then) =
      _$CreatePostStateCopyWithImpl<$Res, CreatePostState>;
  @useResult
  $Res call({CreatePostStateData? data});

  $CreatePostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreatePostStateCopyWithImpl<$Res, $Val extends CreatePostState>
    implements $CreatePostStateCopyWith<$Res> {
  _$CreatePostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreatePostStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatePostStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CreatePostStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreatePostStateData? data});

  @override
  $CreatePostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$InitialImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreatePostStateData?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({this.data});

  @override
  final CreatePostStateData? data;

  @override
  String toString() {
    return 'CreatePostState.initial(data: $data)';
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
    required TResult Function(CreatePostStateData? data) initial,
    required TResult Function(CreatePostStateData? data) getError,
    required TResult Function(CreatePostStateData? data) success,
    required TResult Function(CreatePostStateData? data) status,
    required TResult Function(CreatePostStateData? data) getImage,
    required TResult Function(CreatePostStateData? data) getListTopic,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreatePostStateData? data)? initial,
    TResult? Function(CreatePostStateData? data)? getError,
    TResult? Function(CreatePostStateData? data)? success,
    TResult? Function(CreatePostStateData? data)? status,
    TResult? Function(CreatePostStateData? data)? getImage,
    TResult? Function(CreatePostStateData? data)? getListTopic,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreatePostStateData? data)? initial,
    TResult Function(CreatePostStateData? data)? getError,
    TResult Function(CreatePostStateData? data)? success,
    TResult Function(CreatePostStateData? data)? status,
    TResult Function(CreatePostStateData? data)? getImage,
    TResult Function(CreatePostStateData? data)? getListTopic,
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
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CreatePostState {
  const factory Initial({final CreatePostStateData? data}) = _$InitialImpl;

  @override
  CreatePostStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreatePostStateData? data});

  @override
  $CreatePostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res, _$GetErrorImpl>
    implements _$$GetErrorImplCopyWith<$Res> {
  __$$GetErrorImplCopyWithImpl(
      _$GetErrorImpl _value, $Res Function(_$GetErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetErrorImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreatePostStateData?,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl implements GetError {
  const _$GetErrorImpl({this.data});

  @override
  final CreatePostStateData? data;

  @override
  String toString() {
    return 'CreatePostState.getError(data: $data)';
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
    required TResult Function(CreatePostStateData? data) initial,
    required TResult Function(CreatePostStateData? data) getError,
    required TResult Function(CreatePostStateData? data) success,
    required TResult Function(CreatePostStateData? data) status,
    required TResult Function(CreatePostStateData? data) getImage,
    required TResult Function(CreatePostStateData? data) getListTopic,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreatePostStateData? data)? initial,
    TResult? Function(CreatePostStateData? data)? getError,
    TResult? Function(CreatePostStateData? data)? success,
    TResult? Function(CreatePostStateData? data)? status,
    TResult? Function(CreatePostStateData? data)? getImage,
    TResult? Function(CreatePostStateData? data)? getListTopic,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreatePostStateData? data)? initial,
    TResult Function(CreatePostStateData? data)? getError,
    TResult Function(CreatePostStateData? data)? success,
    TResult Function(CreatePostStateData? data)? status,
    TResult Function(CreatePostStateData? data)? getImage,
    TResult Function(CreatePostStateData? data)? getListTopic,
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
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements CreatePostState {
  const factory GetError({final CreatePostStateData? data}) = _$GetErrorImpl;

  @override
  CreatePostStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreatePostStateData? data});

  @override
  $CreatePostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreatePostStateData?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({this.data});

  @override
  final CreatePostStateData? data;

  @override
  String toString() {
    return 'CreatePostState.success(data: $data)';
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
    required TResult Function(CreatePostStateData? data) initial,
    required TResult Function(CreatePostStateData? data) getError,
    required TResult Function(CreatePostStateData? data) success,
    required TResult Function(CreatePostStateData? data) status,
    required TResult Function(CreatePostStateData? data) getImage,
    required TResult Function(CreatePostStateData? data) getListTopic,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreatePostStateData? data)? initial,
    TResult? Function(CreatePostStateData? data)? getError,
    TResult? Function(CreatePostStateData? data)? success,
    TResult? Function(CreatePostStateData? data)? status,
    TResult? Function(CreatePostStateData? data)? getImage,
    TResult? Function(CreatePostStateData? data)? getListTopic,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreatePostStateData? data)? initial,
    TResult Function(CreatePostStateData? data)? getError,
    TResult Function(CreatePostStateData? data)? success,
    TResult Function(CreatePostStateData? data)? status,
    TResult Function(CreatePostStateData? data)? getImage,
    TResult Function(CreatePostStateData? data)? getListTopic,
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
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements CreatePostState {
  const factory Success({final CreatePostStateData? data}) = _$SuccessImpl;

  @override
  CreatePostStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusImplCopyWith<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  factory _$$StatusImplCopyWith(
          _$StatusImpl value, $Res Function(_$StatusImpl) then) =
      __$$StatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreatePostStateData? data});

  @override
  $CreatePostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusImplCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res, _$StatusImpl>
    implements _$$StatusImplCopyWith<$Res> {
  __$$StatusImplCopyWithImpl(
      _$StatusImpl _value, $Res Function(_$StatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$StatusImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreatePostStateData?,
    ));
  }
}

/// @nodoc

class _$StatusImpl implements Status {
  const _$StatusImpl({this.data});

  @override
  final CreatePostStateData? data;

  @override
  String toString() {
    return 'CreatePostState.status(data: $data)';
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
    required TResult Function(CreatePostStateData? data) initial,
    required TResult Function(CreatePostStateData? data) getError,
    required TResult Function(CreatePostStateData? data) success,
    required TResult Function(CreatePostStateData? data) status,
    required TResult Function(CreatePostStateData? data) getImage,
    required TResult Function(CreatePostStateData? data) getListTopic,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreatePostStateData? data)? initial,
    TResult? Function(CreatePostStateData? data)? getError,
    TResult? Function(CreatePostStateData? data)? success,
    TResult? Function(CreatePostStateData? data)? status,
    TResult? Function(CreatePostStateData? data)? getImage,
    TResult? Function(CreatePostStateData? data)? getListTopic,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreatePostStateData? data)? initial,
    TResult Function(CreatePostStateData? data)? getError,
    TResult Function(CreatePostStateData? data)? success,
    TResult Function(CreatePostStateData? data)? status,
    TResult Function(CreatePostStateData? data)? getImage,
    TResult Function(CreatePostStateData? data)? getListTopic,
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
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements CreatePostState {
  const factory Status({final CreatePostStateData? data}) = _$StatusImpl;

  @override
  CreatePostStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetImageImplCopyWith<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  factory _$$GetImageImplCopyWith(
          _$GetImageImpl value, $Res Function(_$GetImageImpl) then) =
      __$$GetImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreatePostStateData? data});

  @override
  $CreatePostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetImageImplCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res, _$GetImageImpl>
    implements _$$GetImageImplCopyWith<$Res> {
  __$$GetImageImplCopyWithImpl(
      _$GetImageImpl _value, $Res Function(_$GetImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetImageImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreatePostStateData?,
    ));
  }
}

/// @nodoc

class _$GetImageImpl implements GetImage {
  const _$GetImageImpl({this.data});

  @override
  final CreatePostStateData? data;

  @override
  String toString() {
    return 'CreatePostState.getImage(data: $data)';
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
    required TResult Function(CreatePostStateData? data) initial,
    required TResult Function(CreatePostStateData? data) getError,
    required TResult Function(CreatePostStateData? data) success,
    required TResult Function(CreatePostStateData? data) status,
    required TResult Function(CreatePostStateData? data) getImage,
    required TResult Function(CreatePostStateData? data) getListTopic,
  }) {
    return getImage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreatePostStateData? data)? initial,
    TResult? Function(CreatePostStateData? data)? getError,
    TResult? Function(CreatePostStateData? data)? success,
    TResult? Function(CreatePostStateData? data)? status,
    TResult? Function(CreatePostStateData? data)? getImage,
    TResult? Function(CreatePostStateData? data)? getListTopic,
  }) {
    return getImage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreatePostStateData? data)? initial,
    TResult Function(CreatePostStateData? data)? getError,
    TResult Function(CreatePostStateData? data)? success,
    TResult Function(CreatePostStateData? data)? status,
    TResult Function(CreatePostStateData? data)? getImage,
    TResult Function(CreatePostStateData? data)? getListTopic,
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
    required TResult orElse(),
  }) {
    if (getImage != null) {
      return getImage(this);
    }
    return orElse();
  }
}

abstract class GetImage implements CreatePostState {
  const factory GetImage({final CreatePostStateData? data}) = _$GetImageImpl;

  @override
  CreatePostStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetImageImplCopyWith<_$GetImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetListTopicImplCopyWith<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  factory _$$GetListTopicImplCopyWith(
          _$GetListTopicImpl value, $Res Function(_$GetListTopicImpl) then) =
      __$$GetListTopicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreatePostStateData? data});

  @override
  $CreatePostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetListTopicImplCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res, _$GetListTopicImpl>
    implements _$$GetListTopicImplCopyWith<$Res> {
  __$$GetListTopicImplCopyWithImpl(
      _$GetListTopicImpl _value, $Res Function(_$GetListTopicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetListTopicImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreatePostStateData?,
    ));
  }
}

/// @nodoc

class _$GetListTopicImpl implements GetListTopic {
  const _$GetListTopicImpl({this.data});

  @override
  final CreatePostStateData? data;

  @override
  String toString() {
    return 'CreatePostState.getListTopic(data: $data)';
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
    required TResult Function(CreatePostStateData? data) initial,
    required TResult Function(CreatePostStateData? data) getError,
    required TResult Function(CreatePostStateData? data) success,
    required TResult Function(CreatePostStateData? data) status,
    required TResult Function(CreatePostStateData? data) getImage,
    required TResult Function(CreatePostStateData? data) getListTopic,
  }) {
    return getListTopic(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreatePostStateData? data)? initial,
    TResult? Function(CreatePostStateData? data)? getError,
    TResult? Function(CreatePostStateData? data)? success,
    TResult? Function(CreatePostStateData? data)? status,
    TResult? Function(CreatePostStateData? data)? getImage,
    TResult? Function(CreatePostStateData? data)? getListTopic,
  }) {
    return getListTopic?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreatePostStateData? data)? initial,
    TResult Function(CreatePostStateData? data)? getError,
    TResult Function(CreatePostStateData? data)? success,
    TResult Function(CreatePostStateData? data)? status,
    TResult Function(CreatePostStateData? data)? getImage,
    TResult Function(CreatePostStateData? data)? getListTopic,
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
    required TResult orElse(),
  }) {
    if (getListTopic != null) {
      return getListTopic(this);
    }
    return orElse();
  }
}

abstract class GetListTopic implements CreatePostState {
  const factory GetListTopic({final CreatePostStateData? data}) =
      _$GetListTopicImpl;

  @override
  CreatePostStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetListTopicImplCopyWith<_$GetListTopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
