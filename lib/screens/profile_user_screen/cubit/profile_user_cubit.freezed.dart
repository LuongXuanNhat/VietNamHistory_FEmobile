// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileUserStateData {
  String? get error => throw _privateConstructorUsedError;
  int get success => throw _privateConstructorUsedError;
  String? get urlImage => throw _privateConstructorUsedError;
  UserResponse? get userResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileUserStateDataCopyWith<ProfileUserStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUserStateDataCopyWith<$Res> {
  factory $ProfileUserStateDataCopyWith(ProfileUserStateData value,
          $Res Function(ProfileUserStateData) then) =
      _$ProfileUserStateDataCopyWithImpl<$Res, ProfileUserStateData>;
  @useResult
  $Res call(
      {String? error,
      int success,
      String? urlImage,
      UserResponse? userResponse});
}

/// @nodoc
class _$ProfileUserStateDataCopyWithImpl<$Res,
        $Val extends ProfileUserStateData>
    implements $ProfileUserStateDataCopyWith<$Res> {
  _$ProfileUserStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? success = null,
    Object? urlImage = freezed,
    Object? userResponse = freezed,
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
      urlImage: freezed == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userResponse: freezed == userResponse
          ? _value.userResponse
          : userResponse // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileUserStateDataImplCopyWith<$Res>
    implements $ProfileUserStateDataCopyWith<$Res> {
  factory _$$ProfileUserStateDataImplCopyWith(_$ProfileUserStateDataImpl value,
          $Res Function(_$ProfileUserStateDataImpl) then) =
      __$$ProfileUserStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? error,
      int success,
      String? urlImage,
      UserResponse? userResponse});
}

/// @nodoc
class __$$ProfileUserStateDataImplCopyWithImpl<$Res>
    extends _$ProfileUserStateDataCopyWithImpl<$Res, _$ProfileUserStateDataImpl>
    implements _$$ProfileUserStateDataImplCopyWith<$Res> {
  __$$ProfileUserStateDataImplCopyWithImpl(_$ProfileUserStateDataImpl _value,
      $Res Function(_$ProfileUserStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? success = null,
    Object? urlImage = freezed,
    Object? userResponse = freezed,
  }) {
    return _then(_$ProfileUserStateDataImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      urlImage: freezed == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userResponse: freezed == userResponse
          ? _value.userResponse
          : userResponse // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ));
  }
}

/// @nodoc

class _$ProfileUserStateDataImpl implements _ProfileUserStateData {
  const _$ProfileUserStateDataImpl(
      {this.error, this.success = 0, this.urlImage, this.userResponse});

  @override
  final String? error;
  @override
  @JsonKey()
  final int success;
  @override
  final String? urlImage;
  @override
  final UserResponse? userResponse;

  @override
  String toString() {
    return 'ProfileUserStateData(error: $error, success: $success, urlImage: $urlImage, userResponse: $userResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileUserStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.urlImage, urlImage) ||
                other.urlImage == urlImage) &&
            (identical(other.userResponse, userResponse) ||
                other.userResponse == userResponse));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, success, urlImage, userResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileUserStateDataImplCopyWith<_$ProfileUserStateDataImpl>
      get copyWith =>
          __$$ProfileUserStateDataImplCopyWithImpl<_$ProfileUserStateDataImpl>(
              this, _$identity);
}

abstract class _ProfileUserStateData implements ProfileUserStateData {
  const factory _ProfileUserStateData(
      {final String? error,
      final int success,
      final String? urlImage,
      final UserResponse? userResponse}) = _$ProfileUserStateDataImpl;

  @override
  String? get error;
  @override
  int get success;
  @override
  String? get urlImage;
  @override
  UserResponse? get userResponse;
  @override
  @JsonKey(ignore: true)
  _$$ProfileUserStateDataImplCopyWith<_$ProfileUserStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileUserState {
  ProfileUserStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileUserStateData data) initial,
    required TResult Function(ProfileUserStateData data) getError,
    required TResult Function(ProfileUserStateData data) success,
    required TResult Function(ProfileUserStateData data) urlImage,
    required TResult Function(ProfileUserStateData data) userResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileUserStateData data)? initial,
    TResult? Function(ProfileUserStateData data)? getError,
    TResult? Function(ProfileUserStateData data)? success,
    TResult? Function(ProfileUserStateData data)? urlImage,
    TResult? Function(ProfileUserStateData data)? userResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileUserStateData data)? initial,
    TResult Function(ProfileUserStateData data)? getError,
    TResult Function(ProfileUserStateData data)? success,
    TResult Function(ProfileUserStateData data)? urlImage,
    TResult Function(ProfileUserStateData data)? userResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(GetUrlImage value) urlImage,
    required TResult Function(Profile value) userResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetUrlImage value)? urlImage,
    TResult? Function(Profile value)? userResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetUrlImage value)? urlImage,
    TResult Function(Profile value)? userResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileUserStateCopyWith<ProfileUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUserStateCopyWith<$Res> {
  factory $ProfileUserStateCopyWith(
          ProfileUserState value, $Res Function(ProfileUserState) then) =
      _$ProfileUserStateCopyWithImpl<$Res, ProfileUserState>;
  @useResult
  $Res call({ProfileUserStateData data});

  $ProfileUserStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ProfileUserStateCopyWithImpl<$Res, $Val extends ProfileUserState>
    implements $ProfileUserStateCopyWith<$Res> {
  _$ProfileUserStateCopyWithImpl(this._value, this._then);

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
              as ProfileUserStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileUserStateDataCopyWith<$Res> get data {
    return $ProfileUserStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ProfileUserStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileUserStateData data});

  @override
  $ProfileUserStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProfileUserStateCopyWithImpl<$Res, _$InitialImpl>
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
              as ProfileUserStateData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({required this.data});

  @override
  final ProfileUserStateData data;

  @override
  String toString() {
    return 'ProfileUserState.initial(data: $data)';
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
    required TResult Function(ProfileUserStateData data) initial,
    required TResult Function(ProfileUserStateData data) getError,
    required TResult Function(ProfileUserStateData data) success,
    required TResult Function(ProfileUserStateData data) urlImage,
    required TResult Function(ProfileUserStateData data) userResponse,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileUserStateData data)? initial,
    TResult? Function(ProfileUserStateData data)? getError,
    TResult? Function(ProfileUserStateData data)? success,
    TResult? Function(ProfileUserStateData data)? urlImage,
    TResult? Function(ProfileUserStateData data)? userResponse,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileUserStateData data)? initial,
    TResult Function(ProfileUserStateData data)? getError,
    TResult Function(ProfileUserStateData data)? success,
    TResult Function(ProfileUserStateData data)? urlImage,
    TResult Function(ProfileUserStateData data)? userResponse,
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
    required TResult Function(GetUrlImage value) urlImage,
    required TResult Function(Profile value) userResponse,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetUrlImage value)? urlImage,
    TResult? Function(Profile value)? userResponse,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetUrlImage value)? urlImage,
    TResult Function(Profile value)? userResponse,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProfileUserState {
  const factory Initial({required final ProfileUserStateData data}) =
      _$InitialImpl;

  @override
  ProfileUserStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $ProfileUserStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileUserStateData data});

  @override
  $ProfileUserStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$ProfileUserStateCopyWithImpl<$Res, _$GetErrorImpl>
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
              as ProfileUserStateData,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl implements GetError {
  const _$GetErrorImpl({required this.data});

  @override
  final ProfileUserStateData data;

  @override
  String toString() {
    return 'ProfileUserState.getError(data: $data)';
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
    required TResult Function(ProfileUserStateData data) initial,
    required TResult Function(ProfileUserStateData data) getError,
    required TResult Function(ProfileUserStateData data) success,
    required TResult Function(ProfileUserStateData data) urlImage,
    required TResult Function(ProfileUserStateData data) userResponse,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileUserStateData data)? initial,
    TResult? Function(ProfileUserStateData data)? getError,
    TResult? Function(ProfileUserStateData data)? success,
    TResult? Function(ProfileUserStateData data)? urlImage,
    TResult? Function(ProfileUserStateData data)? userResponse,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileUserStateData data)? initial,
    TResult Function(ProfileUserStateData data)? getError,
    TResult Function(ProfileUserStateData data)? success,
    TResult Function(ProfileUserStateData data)? urlImage,
    TResult Function(ProfileUserStateData data)? userResponse,
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
    required TResult Function(GetUrlImage value) urlImage,
    required TResult Function(Profile value) userResponse,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetUrlImage value)? urlImage,
    TResult? Function(Profile value)? userResponse,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetUrlImage value)? urlImage,
    TResult Function(Profile value)? userResponse,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements ProfileUserState {
  const factory GetError({required final ProfileUserStateData data}) =
      _$GetErrorImpl;

  @override
  ProfileUserStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $ProfileUserStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileUserStateData data});

  @override
  $ProfileUserStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ProfileUserStateCopyWithImpl<$Res, _$SuccessImpl>
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
              as ProfileUserStateData,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({required this.data});

  @override
  final ProfileUserStateData data;

  @override
  String toString() {
    return 'ProfileUserState.success(data: $data)';
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
    required TResult Function(ProfileUserStateData data) initial,
    required TResult Function(ProfileUserStateData data) getError,
    required TResult Function(ProfileUserStateData data) success,
    required TResult Function(ProfileUserStateData data) urlImage,
    required TResult Function(ProfileUserStateData data) userResponse,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileUserStateData data)? initial,
    TResult? Function(ProfileUserStateData data)? getError,
    TResult? Function(ProfileUserStateData data)? success,
    TResult? Function(ProfileUserStateData data)? urlImage,
    TResult? Function(ProfileUserStateData data)? userResponse,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileUserStateData data)? initial,
    TResult Function(ProfileUserStateData data)? getError,
    TResult Function(ProfileUserStateData data)? success,
    TResult Function(ProfileUserStateData data)? urlImage,
    TResult Function(ProfileUserStateData data)? userResponse,
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
    required TResult Function(GetUrlImage value) urlImage,
    required TResult Function(Profile value) userResponse,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetUrlImage value)? urlImage,
    TResult? Function(Profile value)? userResponse,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetUrlImage value)? urlImage,
    TResult Function(Profile value)? userResponse,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements ProfileUserState {
  const factory Success({required final ProfileUserStateData data}) =
      _$SuccessImpl;

  @override
  ProfileUserStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUrlImageImplCopyWith<$Res>
    implements $ProfileUserStateCopyWith<$Res> {
  factory _$$GetUrlImageImplCopyWith(
          _$GetUrlImageImpl value, $Res Function(_$GetUrlImageImpl) then) =
      __$$GetUrlImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileUserStateData data});

  @override
  $ProfileUserStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetUrlImageImplCopyWithImpl<$Res>
    extends _$ProfileUserStateCopyWithImpl<$Res, _$GetUrlImageImpl>
    implements _$$GetUrlImageImplCopyWith<$Res> {
  __$$GetUrlImageImplCopyWithImpl(
      _$GetUrlImageImpl _value, $Res Function(_$GetUrlImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetUrlImageImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileUserStateData,
    ));
  }
}

/// @nodoc

class _$GetUrlImageImpl implements GetUrlImage {
  const _$GetUrlImageImpl({required this.data});

  @override
  final ProfileUserStateData data;

  @override
  String toString() {
    return 'ProfileUserState.urlImage(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUrlImageImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUrlImageImplCopyWith<_$GetUrlImageImpl> get copyWith =>
      __$$GetUrlImageImplCopyWithImpl<_$GetUrlImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileUserStateData data) initial,
    required TResult Function(ProfileUserStateData data) getError,
    required TResult Function(ProfileUserStateData data) success,
    required TResult Function(ProfileUserStateData data) urlImage,
    required TResult Function(ProfileUserStateData data) userResponse,
  }) {
    return urlImage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileUserStateData data)? initial,
    TResult? Function(ProfileUserStateData data)? getError,
    TResult? Function(ProfileUserStateData data)? success,
    TResult? Function(ProfileUserStateData data)? urlImage,
    TResult? Function(ProfileUserStateData data)? userResponse,
  }) {
    return urlImage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileUserStateData data)? initial,
    TResult Function(ProfileUserStateData data)? getError,
    TResult Function(ProfileUserStateData data)? success,
    TResult Function(ProfileUserStateData data)? urlImage,
    TResult Function(ProfileUserStateData data)? userResponse,
    required TResult orElse(),
  }) {
    if (urlImage != null) {
      return urlImage(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(GetUrlImage value) urlImage,
    required TResult Function(Profile value) userResponse,
  }) {
    return urlImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetUrlImage value)? urlImage,
    TResult? Function(Profile value)? userResponse,
  }) {
    return urlImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetUrlImage value)? urlImage,
    TResult Function(Profile value)? userResponse,
    required TResult orElse(),
  }) {
    if (urlImage != null) {
      return urlImage(this);
    }
    return orElse();
  }
}

abstract class GetUrlImage implements ProfileUserState {
  const factory GetUrlImage({required final ProfileUserStateData data}) =
      _$GetUrlImageImpl;

  @override
  ProfileUserStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetUrlImageImplCopyWith<_$GetUrlImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res>
    implements $ProfileUserStateCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
          _$ProfileImpl value, $Res Function(_$ProfileImpl) then) =
      __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileUserStateData data});

  @override
  $ProfileUserStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileUserStateCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
      _$ProfileImpl _value, $Res Function(_$ProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ProfileImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileUserStateData,
    ));
  }
}

/// @nodoc

class _$ProfileImpl implements Profile {
  const _$ProfileImpl({required this.data});

  @override
  final ProfileUserStateData data;

  @override
  String toString() {
    return 'ProfileUserState.userResponse(data: $data)';
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
    required TResult Function(ProfileUserStateData data) initial,
    required TResult Function(ProfileUserStateData data) getError,
    required TResult Function(ProfileUserStateData data) success,
    required TResult Function(ProfileUserStateData data) urlImage,
    required TResult Function(ProfileUserStateData data) userResponse,
  }) {
    return userResponse(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileUserStateData data)? initial,
    TResult? Function(ProfileUserStateData data)? getError,
    TResult? Function(ProfileUserStateData data)? success,
    TResult? Function(ProfileUserStateData data)? urlImage,
    TResult? Function(ProfileUserStateData data)? userResponse,
  }) {
    return userResponse?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileUserStateData data)? initial,
    TResult Function(ProfileUserStateData data)? getError,
    TResult Function(ProfileUserStateData data)? success,
    TResult Function(ProfileUserStateData data)? urlImage,
    TResult Function(ProfileUserStateData data)? userResponse,
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
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(GetUrlImage value) urlImage,
    required TResult Function(Profile value) userResponse,
  }) {
    return userResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetUrlImage value)? urlImage,
    TResult? Function(Profile value)? userResponse,
  }) {
    return userResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetUrlImage value)? urlImage,
    TResult Function(Profile value)? userResponse,
    required TResult orElse(),
  }) {
    if (userResponse != null) {
      return userResponse(this);
    }
    return orElse();
  }
}

abstract class Profile implements ProfileUserState {
  const factory Profile({required final ProfileUserStateData data}) =
      _$ProfileImpl;

  @override
  ProfileUserStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
