// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileStateData {
  String get error => throw _privateConstructorUsedError;
  int get success => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;
  UserResponse? get userResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateDataCopyWith<ProfileStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateDataCopyWith<$Res> {
  factory $ProfileStateDataCopyWith(
          ProfileStateData value, $Res Function(ProfileStateData) then) =
      _$ProfileStateDataCopyWithImpl<$Res, ProfileStateData>;
  @useResult
  $Res call(
      {String error, int success, File? image, UserResponse? userResponse});
}

/// @nodoc
class _$ProfileStateDataCopyWithImpl<$Res, $Val extends ProfileStateData>
    implements $ProfileStateDataCopyWith<$Res> {
  _$ProfileStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? success = null,
    Object? image = freezed,
    Object? userResponse = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      userResponse: freezed == userResponse
          ? _value.userResponse
          : userResponse // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileStateDataImplCopyWith<$Res>
    implements $ProfileStateDataCopyWith<$Res> {
  factory _$$ProfileStateDataImplCopyWith(_$ProfileStateDataImpl value,
          $Res Function(_$ProfileStateDataImpl) then) =
      __$$ProfileStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error, int success, File? image, UserResponse? userResponse});
}

/// @nodoc
class __$$ProfileStateDataImplCopyWithImpl<$Res>
    extends _$ProfileStateDataCopyWithImpl<$Res, _$ProfileStateDataImpl>
    implements _$$ProfileStateDataImplCopyWith<$Res> {
  __$$ProfileStateDataImplCopyWithImpl(_$ProfileStateDataImpl _value,
      $Res Function(_$ProfileStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? success = null,
    Object? image = freezed,
    Object? userResponse = freezed,
  }) {
    return _then(_$ProfileStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      userResponse: freezed == userResponse
          ? _value.userResponse
          : userResponse // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ));
  }
}

/// @nodoc

class _$ProfileStateDataImpl implements _ProfileStateData {
  const _$ProfileStateDataImpl(
      {this.error = '', this.success = 0, this.image, this.userResponse});

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final int success;
  @override
  final File? image;
  @override
  final UserResponse? userResponse;

  @override
  String toString() {
    return 'ProfileStateData(error: $error, success: $success, image: $image, userResponse: $userResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.userResponse, userResponse) ||
                other.userResponse == userResponse));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, success, image, userResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateDataImplCopyWith<_$ProfileStateDataImpl> get copyWith =>
      __$$ProfileStateDataImplCopyWithImpl<_$ProfileStateDataImpl>(
          this, _$identity);
}

abstract class _ProfileStateData implements ProfileStateData {
  const factory _ProfileStateData(
      {final String error,
      final int success,
      final File? image,
      final UserResponse? userResponse}) = _$ProfileStateDataImpl;

  @override
  String get error;
  @override
  int get success;
  @override
  File? get image;
  @override
  UserResponse? get userResponse;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateDataImplCopyWith<_$ProfileStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  ProfileStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) error,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) userResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? error,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? userResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? error,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? userResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) userResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? userResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? userResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call({ProfileStateData? data});

  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

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
              as ProfileStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProfileStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileStateData? data});

  @override
  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
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
              as ProfileStateData?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString() {
    return 'ProfileState.initial(data: $data)';
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
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) error,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) userResponse,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? error,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? userResponse,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? error,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? userResponse,
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
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) userResponse,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? userResponse,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? userResponse,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProfileState {
  const factory Initial({final ProfileStateData? data}) = _$InitialImpl;

  @override
  ProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileStateData? data});

  @override
  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ErrorImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileStateData?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString() {
    return 'ProfileState.error(data: $data)';
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
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) error,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) userResponse,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? error,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? userResponse,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? error,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? userResponse,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) userResponse,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? userResponse,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? userResponse,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ProfileState {
  const factory Error({final ProfileStateData? data}) = _$ErrorImpl;

  @override
  ProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileStateData? data});

  @override
  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$SuccessImpl>
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
              as ProfileStateData?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString() {
    return 'ProfileState.success(data: $data)';
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
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) error,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) userResponse,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? error,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? userResponse,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? error,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? userResponse,
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
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) userResponse,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? userResponse,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? userResponse,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements ProfileState {
  const factory Success({final ProfileStateData? data}) = _$SuccessImpl;

  @override
  ProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetImageImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$GetImageImplCopyWith(
          _$GetImageImpl value, $Res Function(_$GetImageImpl) then) =
      __$$GetImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileStateData? data});

  @override
  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetImageImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$GetImageImpl>
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
              as ProfileStateData?,
    ));
  }
}

/// @nodoc

class _$GetImageImpl implements GetImage {
  const _$GetImageImpl({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString() {
    return 'ProfileState.getImage(data: $data)';
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
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) error,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) userResponse,
  }) {
    return getImage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? error,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? userResponse,
  }) {
    return getImage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? error,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? userResponse,
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
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) userResponse,
  }) {
    return getImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? userResponse,
  }) {
    return getImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? userResponse,
    required TResult orElse(),
  }) {
    if (getImage != null) {
      return getImage(this);
    }
    return orElse();
  }
}

abstract class GetImage implements ProfileState {
  const factory GetImage({final ProfileStateData? data}) = _$GetImageImpl;

  @override
  ProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetImageImplCopyWith<_$GetImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
          _$ProfileImpl value, $Res Function(_$ProfileImpl) then) =
      __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileStateData? data});

  @override
  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
      _$ProfileImpl _value, $Res Function(_$ProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ProfileImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileStateData?,
    ));
  }
}

/// @nodoc

class _$ProfileImpl implements Profile {
  const _$ProfileImpl({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString() {
    return 'ProfileState.userResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) error,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) userResponse,
  }) {
    return userResponse(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? error,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? userResponse,
  }) {
    return userResponse?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? error,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? userResponse,
    required TResult orElse(),
  }) {
    if (userResponse != null) {
      return userResponse(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) userResponse,
  }) {
    return userResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? userResponse,
  }) {
    return userResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? userResponse,
    required TResult orElse(),
  }) {
    if (userResponse != null) {
      return userResponse(this);
    }
    return orElse();
  }
}

abstract class Profile implements ProfileState {
  const factory Profile({final ProfileStateData? data}) = _$ProfileImpl;

  @override
  ProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
