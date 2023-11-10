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
  String? get error => throw _privateConstructorUsedError;
  int get success => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;
  Uint8List? get bytes => throw _privateConstructorUsedError;
  UserResponse? get userResponse => throw _privateConstructorUsedError;
  DateTime? get transactionDate => throw _privateConstructorUsedError;

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
      {String? error,
      int success,
      int gender,
      DateTime? dateOfBirth,
      File? image,
      Uint8List? bytes,
      UserResponse? userResponse,
      DateTime? transactionDate});
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
    Object? error = freezed,
    Object? success = null,
    Object? gender = null,
    Object? dateOfBirth = freezed,
    Object? image = freezed,
    Object? bytes = freezed,
    Object? userResponse = freezed,
    Object? transactionDate = freezed,
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
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      userResponse: freezed == userResponse
          ? _value.userResponse
          : userResponse // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
      transactionDate: freezed == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      {String? error,
      int success,
      int gender,
      DateTime? dateOfBirth,
      File? image,
      Uint8List? bytes,
      UserResponse? userResponse,
      DateTime? transactionDate});
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
    Object? error = freezed,
    Object? success = null,
    Object? gender = null,
    Object? dateOfBirth = freezed,
    Object? image = freezed,
    Object? bytes = freezed,
    Object? userResponse = freezed,
    Object? transactionDate = freezed,
  }) {
    return _then(_$ProfileStateDataImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      userResponse: freezed == userResponse
          ? _value.userResponse
          : userResponse // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
      transactionDate: freezed == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ProfileStateDataImpl
    with DiagnosticableTreeMixin
    implements _ProfileStateData {
  const _$ProfileStateDataImpl(
      {this.error,
      this.success = 0,
      this.gender = 0,
      this.dateOfBirth,
      this.image,
      this.bytes,
      this.userResponse,
      this.transactionDate});

  @override
  final String? error;
  @override
  @JsonKey()
  final int success;
  @override
  @JsonKey()
  final int gender;
  @override
  final DateTime? dateOfBirth;
  @override
  final File? image;
  @override
  final Uint8List? bytes;
  @override
  final UserResponse? userResponse;
  @override
  final DateTime? transactionDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileStateData(error: $error, success: $success, gender: $gender, dateOfBirth: $dateOfBirth, image: $image, bytes: $bytes, userResponse: $userResponse, transactionDate: $transactionDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileStateData'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('success', success))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('bytes', bytes))
      ..add(DiagnosticsProperty('userResponse', userResponse))
      ..add(DiagnosticsProperty('transactionDate', transactionDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other.bytes, bytes) &&
            (identical(other.userResponse, userResponse) ||
                other.userResponse == userResponse) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      error,
      success,
      gender,
      dateOfBirth,
      image,
      const DeepCollectionEquality().hash(bytes),
      userResponse,
      transactionDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateDataImplCopyWith<_$ProfileStateDataImpl> get copyWith =>
      __$$ProfileStateDataImplCopyWithImpl<_$ProfileStateDataImpl>(
          this, _$identity);
}

abstract class _ProfileStateData implements ProfileStateData {
  const factory _ProfileStateData(
      {final String? error,
      final int success,
      final int gender,
      final DateTime? dateOfBirth,
      final File? image,
      final Uint8List? bytes,
      final UserResponse? userResponse,
      final DateTime? transactionDate}) = _$ProfileStateDataImpl;

  @override
  String? get error;
  @override
  int get success;
  @override
  int get gender;
  @override
  DateTime? get dateOfBirth;
  @override
  File? get image;
  @override
  Uint8List? get bytes;
  @override
  UserResponse? get userResponse;
  @override
  DateTime? get transactionDate;
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
    required TResult Function(ProfileStateData? data) getError,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) userResponse,
    required TResult Function(ProfileStateData? data) gender,
    required TResult Function(ProfileStateData? data) dateOfBirth,
    required TResult Function(ProfileStateData? data) bytes,
    required TResult Function(ProfileStateData? data) setTransactionDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? getError,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? userResponse,
    TResult? Function(ProfileStateData? data)? gender,
    TResult? Function(ProfileStateData? data)? dateOfBirth,
    TResult? Function(ProfileStateData? data)? bytes,
    TResult? Function(ProfileStateData? data)? setTransactionDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? getError,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? userResponse,
    TResult Function(ProfileStateData? data)? gender,
    TResult Function(ProfileStateData? data)? dateOfBirth,
    TResult Function(ProfileStateData? data)? bytes,
    TResult Function(ProfileStateData? data)? setTransactionDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) userResponse,
    required TResult Function(GetGender value) gender,
    required TResult Function(GetDateOfBirth value) dateOfBirth,
    required TResult Function(GetBytes value) bytes,
    required TResult Function(SetTransactionDate value) setTransactionDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? userResponse,
    TResult? Function(GetGender value)? gender,
    TResult? Function(GetDateOfBirth value)? dateOfBirth,
    TResult? Function(GetBytes value)? bytes,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? userResponse,
    TResult Function(GetGender value)? gender,
    TResult Function(GetDateOfBirth value)? dateOfBirth,
    TResult Function(GetBytes value)? bytes,
    TResult Function(SetTransactionDate value)? setTransactionDate,
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

class _$InitialImpl with DiagnosticableTreeMixin implements Initial {
  const _$InitialImpl({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.initial(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.initial'))
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
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) getError,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) userResponse,
    required TResult Function(ProfileStateData? data) gender,
    required TResult Function(ProfileStateData? data) dateOfBirth,
    required TResult Function(ProfileStateData? data) bytes,
    required TResult Function(ProfileStateData? data) setTransactionDate,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? getError,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? userResponse,
    TResult? Function(ProfileStateData? data)? gender,
    TResult? Function(ProfileStateData? data)? dateOfBirth,
    TResult? Function(ProfileStateData? data)? bytes,
    TResult? Function(ProfileStateData? data)? setTransactionDate,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? getError,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? userResponse,
    TResult Function(ProfileStateData? data)? gender,
    TResult Function(ProfileStateData? data)? dateOfBirth,
    TResult Function(ProfileStateData? data)? bytes,
    TResult Function(ProfileStateData? data)? setTransactionDate,
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
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) userResponse,
    required TResult Function(GetGender value) gender,
    required TResult Function(GetDateOfBirth value) dateOfBirth,
    required TResult Function(GetBytes value) bytes,
    required TResult Function(SetTransactionDate value) setTransactionDate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? userResponse,
    TResult? Function(GetGender value)? gender,
    TResult? Function(GetDateOfBirth value)? dateOfBirth,
    TResult? Function(GetBytes value)? bytes,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? userResponse,
    TResult Function(GetGender value)? gender,
    TResult Function(GetDateOfBirth value)? dateOfBirth,
    TResult Function(GetBytes value)? bytes,
    TResult Function(SetTransactionDate value)? setTransactionDate,
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
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileStateData? data});

  @override
  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$GetErrorImpl>
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
              as ProfileStateData?,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl with DiagnosticableTreeMixin implements GetError {
  const _$GetErrorImpl({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.getError(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.getError'))
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
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) getError,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) userResponse,
    required TResult Function(ProfileStateData? data) gender,
    required TResult Function(ProfileStateData? data) dateOfBirth,
    required TResult Function(ProfileStateData? data) bytes,
    required TResult Function(ProfileStateData? data) setTransactionDate,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? getError,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? userResponse,
    TResult? Function(ProfileStateData? data)? gender,
    TResult? Function(ProfileStateData? data)? dateOfBirth,
    TResult? Function(ProfileStateData? data)? bytes,
    TResult? Function(ProfileStateData? data)? setTransactionDate,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? getError,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? userResponse,
    TResult Function(ProfileStateData? data)? gender,
    TResult Function(ProfileStateData? data)? dateOfBirth,
    TResult Function(ProfileStateData? data)? bytes,
    TResult Function(ProfileStateData? data)? setTransactionDate,
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
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) userResponse,
    required TResult Function(GetGender value) gender,
    required TResult Function(GetDateOfBirth value) dateOfBirth,
    required TResult Function(GetBytes value) bytes,
    required TResult Function(SetTransactionDate value) setTransactionDate,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? userResponse,
    TResult? Function(GetGender value)? gender,
    TResult? Function(GetDateOfBirth value)? dateOfBirth,
    TResult? Function(GetBytes value)? bytes,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? userResponse,
    TResult Function(GetGender value)? gender,
    TResult Function(GetDateOfBirth value)? dateOfBirth,
    TResult Function(GetBytes value)? bytes,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements ProfileState {
  const factory GetError({final ProfileStateData? data}) = _$GetErrorImpl;

  @override
  ProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
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

class _$SuccessImpl with DiagnosticableTreeMixin implements Success {
  const _$SuccessImpl({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.success(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.success'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(ProfileStateData? data) getError,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) userResponse,
    required TResult Function(ProfileStateData? data) gender,
    required TResult Function(ProfileStateData? data) dateOfBirth,
    required TResult Function(ProfileStateData? data) bytes,
    required TResult Function(ProfileStateData? data) setTransactionDate,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? getError,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? userResponse,
    TResult? Function(ProfileStateData? data)? gender,
    TResult? Function(ProfileStateData? data)? dateOfBirth,
    TResult? Function(ProfileStateData? data)? bytes,
    TResult? Function(ProfileStateData? data)? setTransactionDate,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? getError,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? userResponse,
    TResult Function(ProfileStateData? data)? gender,
    TResult Function(ProfileStateData? data)? dateOfBirth,
    TResult Function(ProfileStateData? data)? bytes,
    TResult Function(ProfileStateData? data)? setTransactionDate,
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
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) userResponse,
    required TResult Function(GetGender value) gender,
    required TResult Function(GetDateOfBirth value) dateOfBirth,
    required TResult Function(GetBytes value) bytes,
    required TResult Function(SetTransactionDate value) setTransactionDate,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? userResponse,
    TResult? Function(GetGender value)? gender,
    TResult? Function(GetDateOfBirth value)? dateOfBirth,
    TResult? Function(GetBytes value)? bytes,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? userResponse,
    TResult Function(GetGender value)? gender,
    TResult Function(GetDateOfBirth value)? dateOfBirth,
    TResult Function(GetBytes value)? bytes,
    TResult Function(SetTransactionDate value)? setTransactionDate,
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

class _$GetImageImpl with DiagnosticableTreeMixin implements GetImage {
  const _$GetImageImpl({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.getImage(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.getImage'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(ProfileStateData? data) getError,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) userResponse,
    required TResult Function(ProfileStateData? data) gender,
    required TResult Function(ProfileStateData? data) dateOfBirth,
    required TResult Function(ProfileStateData? data) bytes,
    required TResult Function(ProfileStateData? data) setTransactionDate,
  }) {
    return getImage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? getError,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? userResponse,
    TResult? Function(ProfileStateData? data)? gender,
    TResult? Function(ProfileStateData? data)? dateOfBirth,
    TResult? Function(ProfileStateData? data)? bytes,
    TResult? Function(ProfileStateData? data)? setTransactionDate,
  }) {
    return getImage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? getError,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? userResponse,
    TResult Function(ProfileStateData? data)? gender,
    TResult Function(ProfileStateData? data)? dateOfBirth,
    TResult Function(ProfileStateData? data)? bytes,
    TResult Function(ProfileStateData? data)? setTransactionDate,
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
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) userResponse,
    required TResult Function(GetGender value) gender,
    required TResult Function(GetDateOfBirth value) dateOfBirth,
    required TResult Function(GetBytes value) bytes,
    required TResult Function(SetTransactionDate value) setTransactionDate,
  }) {
    return getImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? userResponse,
    TResult? Function(GetGender value)? gender,
    TResult? Function(GetDateOfBirth value)? dateOfBirth,
    TResult? Function(GetBytes value)? bytes,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
  }) {
    return getImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? userResponse,
    TResult Function(GetGender value)? gender,
    TResult Function(GetDateOfBirth value)? dateOfBirth,
    TResult Function(GetBytes value)? bytes,
    TResult Function(SetTransactionDate value)? setTransactionDate,
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

class _$ProfileImpl with DiagnosticableTreeMixin implements Profile {
  const _$ProfileImpl({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.userResponse(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.userResponse'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(ProfileStateData? data) getError,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) userResponse,
    required TResult Function(ProfileStateData? data) gender,
    required TResult Function(ProfileStateData? data) dateOfBirth,
    required TResult Function(ProfileStateData? data) bytes,
    required TResult Function(ProfileStateData? data) setTransactionDate,
  }) {
    return userResponse(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? getError,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? userResponse,
    TResult? Function(ProfileStateData? data)? gender,
    TResult? Function(ProfileStateData? data)? dateOfBirth,
    TResult? Function(ProfileStateData? data)? bytes,
    TResult? Function(ProfileStateData? data)? setTransactionDate,
  }) {
    return userResponse?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? getError,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? userResponse,
    TResult Function(ProfileStateData? data)? gender,
    TResult Function(ProfileStateData? data)? dateOfBirth,
    TResult Function(ProfileStateData? data)? bytes,
    TResult Function(ProfileStateData? data)? setTransactionDate,
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
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) userResponse,
    required TResult Function(GetGender value) gender,
    required TResult Function(GetDateOfBirth value) dateOfBirth,
    required TResult Function(GetBytes value) bytes,
    required TResult Function(SetTransactionDate value) setTransactionDate,
  }) {
    return userResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? userResponse,
    TResult? Function(GetGender value)? gender,
    TResult? Function(GetDateOfBirth value)? dateOfBirth,
    TResult? Function(GetBytes value)? bytes,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
  }) {
    return userResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? userResponse,
    TResult Function(GetGender value)? gender,
    TResult Function(GetDateOfBirth value)? dateOfBirth,
    TResult Function(GetBytes value)? bytes,
    TResult Function(SetTransactionDate value)? setTransactionDate,
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

/// @nodoc
abstract class _$$GetGenderImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$GetGenderImplCopyWith(
          _$GetGenderImpl value, $Res Function(_$GetGenderImpl) then) =
      __$$GetGenderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileStateData? data});

  @override
  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetGenderImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$GetGenderImpl>
    implements _$$GetGenderImplCopyWith<$Res> {
  __$$GetGenderImplCopyWithImpl(
      _$GetGenderImpl _value, $Res Function(_$GetGenderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetGenderImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileStateData?,
    ));
  }
}

/// @nodoc

class _$GetGenderImpl with DiagnosticableTreeMixin implements GetGender {
  const _$GetGenderImpl({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.gender(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.gender'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGenderImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGenderImplCopyWith<_$GetGenderImpl> get copyWith =>
      __$$GetGenderImplCopyWithImpl<_$GetGenderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) getError,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) userResponse,
    required TResult Function(ProfileStateData? data) gender,
    required TResult Function(ProfileStateData? data) dateOfBirth,
    required TResult Function(ProfileStateData? data) bytes,
    required TResult Function(ProfileStateData? data) setTransactionDate,
  }) {
    return gender(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? getError,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? userResponse,
    TResult? Function(ProfileStateData? data)? gender,
    TResult? Function(ProfileStateData? data)? dateOfBirth,
    TResult? Function(ProfileStateData? data)? bytes,
    TResult? Function(ProfileStateData? data)? setTransactionDate,
  }) {
    return gender?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? getError,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? userResponse,
    TResult Function(ProfileStateData? data)? gender,
    TResult Function(ProfileStateData? data)? dateOfBirth,
    TResult Function(ProfileStateData? data)? bytes,
    TResult Function(ProfileStateData? data)? setTransactionDate,
    required TResult orElse(),
  }) {
    if (gender != null) {
      return gender(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) userResponse,
    required TResult Function(GetGender value) gender,
    required TResult Function(GetDateOfBirth value) dateOfBirth,
    required TResult Function(GetBytes value) bytes,
    required TResult Function(SetTransactionDate value) setTransactionDate,
  }) {
    return gender(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? userResponse,
    TResult? Function(GetGender value)? gender,
    TResult? Function(GetDateOfBirth value)? dateOfBirth,
    TResult? Function(GetBytes value)? bytes,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
  }) {
    return gender?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? userResponse,
    TResult Function(GetGender value)? gender,
    TResult Function(GetDateOfBirth value)? dateOfBirth,
    TResult Function(GetBytes value)? bytes,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    required TResult orElse(),
  }) {
    if (gender != null) {
      return gender(this);
    }
    return orElse();
  }
}

abstract class GetGender implements ProfileState {
  const factory GetGender({final ProfileStateData? data}) = _$GetGenderImpl;

  @override
  ProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetGenderImplCopyWith<_$GetGenderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDateOfBirthImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$GetDateOfBirthImplCopyWith(_$GetDateOfBirthImpl value,
          $Res Function(_$GetDateOfBirthImpl) then) =
      __$$GetDateOfBirthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileStateData? data});

  @override
  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetDateOfBirthImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$GetDateOfBirthImpl>
    implements _$$GetDateOfBirthImplCopyWith<$Res> {
  __$$GetDateOfBirthImplCopyWithImpl(
      _$GetDateOfBirthImpl _value, $Res Function(_$GetDateOfBirthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetDateOfBirthImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileStateData?,
    ));
  }
}

/// @nodoc

class _$GetDateOfBirthImpl
    with DiagnosticableTreeMixin
    implements GetDateOfBirth {
  const _$GetDateOfBirthImpl({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.dateOfBirth(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.dateOfBirth'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDateOfBirthImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDateOfBirthImplCopyWith<_$GetDateOfBirthImpl> get copyWith =>
      __$$GetDateOfBirthImplCopyWithImpl<_$GetDateOfBirthImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) getError,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) userResponse,
    required TResult Function(ProfileStateData? data) gender,
    required TResult Function(ProfileStateData? data) dateOfBirth,
    required TResult Function(ProfileStateData? data) bytes,
    required TResult Function(ProfileStateData? data) setTransactionDate,
  }) {
    return dateOfBirth(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? getError,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? userResponse,
    TResult? Function(ProfileStateData? data)? gender,
    TResult? Function(ProfileStateData? data)? dateOfBirth,
    TResult? Function(ProfileStateData? data)? bytes,
    TResult? Function(ProfileStateData? data)? setTransactionDate,
  }) {
    return dateOfBirth?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? getError,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? userResponse,
    TResult Function(ProfileStateData? data)? gender,
    TResult Function(ProfileStateData? data)? dateOfBirth,
    TResult Function(ProfileStateData? data)? bytes,
    TResult Function(ProfileStateData? data)? setTransactionDate,
    required TResult orElse(),
  }) {
    if (dateOfBirth != null) {
      return dateOfBirth(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) userResponse,
    required TResult Function(GetGender value) gender,
    required TResult Function(GetDateOfBirth value) dateOfBirth,
    required TResult Function(GetBytes value) bytes,
    required TResult Function(SetTransactionDate value) setTransactionDate,
  }) {
    return dateOfBirth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? userResponse,
    TResult? Function(GetGender value)? gender,
    TResult? Function(GetDateOfBirth value)? dateOfBirth,
    TResult? Function(GetBytes value)? bytes,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
  }) {
    return dateOfBirth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? userResponse,
    TResult Function(GetGender value)? gender,
    TResult Function(GetDateOfBirth value)? dateOfBirth,
    TResult Function(GetBytes value)? bytes,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    required TResult orElse(),
  }) {
    if (dateOfBirth != null) {
      return dateOfBirth(this);
    }
    return orElse();
  }
}

abstract class GetDateOfBirth implements ProfileState {
  const factory GetDateOfBirth({final ProfileStateData? data}) =
      _$GetDateOfBirthImpl;

  @override
  ProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetDateOfBirthImplCopyWith<_$GetDateOfBirthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBytesImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$GetBytesImplCopyWith(
          _$GetBytesImpl value, $Res Function(_$GetBytesImpl) then) =
      __$$GetBytesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileStateData? data});

  @override
  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetBytesImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$GetBytesImpl>
    implements _$$GetBytesImplCopyWith<$Res> {
  __$$GetBytesImplCopyWithImpl(
      _$GetBytesImpl _value, $Res Function(_$GetBytesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetBytesImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileStateData?,
    ));
  }
}

/// @nodoc

class _$GetBytesImpl with DiagnosticableTreeMixin implements GetBytes {
  const _$GetBytesImpl({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.bytes(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.bytes'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBytesImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBytesImplCopyWith<_$GetBytesImpl> get copyWith =>
      __$$GetBytesImplCopyWithImpl<_$GetBytesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) getError,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) userResponse,
    required TResult Function(ProfileStateData? data) gender,
    required TResult Function(ProfileStateData? data) dateOfBirth,
    required TResult Function(ProfileStateData? data) bytes,
    required TResult Function(ProfileStateData? data) setTransactionDate,
  }) {
    return bytes(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? getError,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? userResponse,
    TResult? Function(ProfileStateData? data)? gender,
    TResult? Function(ProfileStateData? data)? dateOfBirth,
    TResult? Function(ProfileStateData? data)? bytes,
    TResult? Function(ProfileStateData? data)? setTransactionDate,
  }) {
    return bytes?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? getError,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? userResponse,
    TResult Function(ProfileStateData? data)? gender,
    TResult Function(ProfileStateData? data)? dateOfBirth,
    TResult Function(ProfileStateData? data)? bytes,
    TResult Function(ProfileStateData? data)? setTransactionDate,
    required TResult orElse(),
  }) {
    if (bytes != null) {
      return bytes(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) userResponse,
    required TResult Function(GetGender value) gender,
    required TResult Function(GetDateOfBirth value) dateOfBirth,
    required TResult Function(GetBytes value) bytes,
    required TResult Function(SetTransactionDate value) setTransactionDate,
  }) {
    return bytes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? userResponse,
    TResult? Function(GetGender value)? gender,
    TResult? Function(GetDateOfBirth value)? dateOfBirth,
    TResult? Function(GetBytes value)? bytes,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
  }) {
    return bytes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? userResponse,
    TResult Function(GetGender value)? gender,
    TResult Function(GetDateOfBirth value)? dateOfBirth,
    TResult Function(GetBytes value)? bytes,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    required TResult orElse(),
  }) {
    if (bytes != null) {
      return bytes(this);
    }
    return orElse();
  }
}

abstract class GetBytes implements ProfileState {
  const factory GetBytes({final ProfileStateData? data}) = _$GetBytesImpl;

  @override
  ProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetBytesImplCopyWith<_$GetBytesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetTransactionDateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$SetTransactionDateImplCopyWith(_$SetTransactionDateImpl value,
          $Res Function(_$SetTransactionDateImpl) then) =
      __$$SetTransactionDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileStateData? data});

  @override
  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetTransactionDateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$SetTransactionDateImpl>
    implements _$$SetTransactionDateImplCopyWith<$Res> {
  __$$SetTransactionDateImplCopyWithImpl(_$SetTransactionDateImpl _value,
      $Res Function(_$SetTransactionDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetTransactionDateImpl(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileStateData?,
    ));
  }
}

/// @nodoc

class _$SetTransactionDateImpl
    with DiagnosticableTreeMixin
    implements SetTransactionDate {
  const _$SetTransactionDateImpl(this.data);

  @override
  final ProfileStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.setTransactionDate(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.setTransactionDate'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetTransactionDateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetTransactionDateImplCopyWith<_$SetTransactionDateImpl> get copyWith =>
      __$$SetTransactionDateImplCopyWithImpl<_$SetTransactionDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) getError,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) userResponse,
    required TResult Function(ProfileStateData? data) gender,
    required TResult Function(ProfileStateData? data) dateOfBirth,
    required TResult Function(ProfileStateData? data) bytes,
    required TResult Function(ProfileStateData? data) setTransactionDate,
  }) {
    return setTransactionDate(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? getError,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? userResponse,
    TResult? Function(ProfileStateData? data)? gender,
    TResult? Function(ProfileStateData? data)? dateOfBirth,
    TResult? Function(ProfileStateData? data)? bytes,
    TResult? Function(ProfileStateData? data)? setTransactionDate,
  }) {
    return setTransactionDate?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? getError,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? userResponse,
    TResult Function(ProfileStateData? data)? gender,
    TResult Function(ProfileStateData? data)? dateOfBirth,
    TResult Function(ProfileStateData? data)? bytes,
    TResult Function(ProfileStateData? data)? setTransactionDate,
    required TResult orElse(),
  }) {
    if (setTransactionDate != null) {
      return setTransactionDate(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) userResponse,
    required TResult Function(GetGender value) gender,
    required TResult Function(GetDateOfBirth value) dateOfBirth,
    required TResult Function(GetBytes value) bytes,
    required TResult Function(SetTransactionDate value) setTransactionDate,
  }) {
    return setTransactionDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? userResponse,
    TResult? Function(GetGender value)? gender,
    TResult? Function(GetDateOfBirth value)? dateOfBirth,
    TResult? Function(GetBytes value)? bytes,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
  }) {
    return setTransactionDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? userResponse,
    TResult Function(GetGender value)? gender,
    TResult Function(GetDateOfBirth value)? dateOfBirth,
    TResult Function(GetBytes value)? bytes,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    required TResult orElse(),
  }) {
    if (setTransactionDate != null) {
      return setTransactionDate(this);
    }
    return orElse();
  }
}

abstract class SetTransactionDate implements ProfileState {
  const factory SetTransactionDate(final ProfileStateData? data) =
      _$SetTransactionDateImpl;

  @override
  ProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetTransactionDateImplCopyWith<_$SetTransactionDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
