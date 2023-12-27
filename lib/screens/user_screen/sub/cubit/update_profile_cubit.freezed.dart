// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateProfileStateData {
  String? get error => throw _privateConstructorUsedError;
  int get success => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  DateTime? get transactionDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateProfileStateDataCopyWith<UpdateProfileStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileStateDataCopyWith<$Res> {
  factory $UpdateProfileStateDataCopyWith(UpdateProfileStateData value,
          $Res Function(UpdateProfileStateData) then) =
      _$UpdateProfileStateDataCopyWithImpl<$Res, UpdateProfileStateData>;
  @useResult
  $Res call(
      {String? error,
      int success,
      int gender,
      DateTime? dateOfBirth,
      DateTime? transactionDate});
}

/// @nodoc
class _$UpdateProfileStateDataCopyWithImpl<$Res,
        $Val extends UpdateProfileStateData>
    implements $UpdateProfileStateDataCopyWith<$Res> {
  _$UpdateProfileStateDataCopyWithImpl(this._value, this._then);

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
      transactionDate: freezed == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileStateDataImplCopyWith<$Res>
    implements $UpdateProfileStateDataCopyWith<$Res> {
  factory _$$UpdateProfileStateDataImplCopyWith(
          _$UpdateProfileStateDataImpl value,
          $Res Function(_$UpdateProfileStateDataImpl) then) =
      __$$UpdateProfileStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? error,
      int success,
      int gender,
      DateTime? dateOfBirth,
      DateTime? transactionDate});
}

/// @nodoc
class __$$UpdateProfileStateDataImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateDataCopyWithImpl<$Res,
        _$UpdateProfileStateDataImpl>
    implements _$$UpdateProfileStateDataImplCopyWith<$Res> {
  __$$UpdateProfileStateDataImplCopyWithImpl(
      _$UpdateProfileStateDataImpl _value,
      $Res Function(_$UpdateProfileStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? success = null,
    Object? gender = null,
    Object? dateOfBirth = freezed,
    Object? transactionDate = freezed,
  }) {
    return _then(_$UpdateProfileStateDataImpl(
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
      transactionDate: freezed == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$UpdateProfileStateDataImpl
    with DiagnosticableTreeMixin
    implements _UpdateProfileStateData {
  const _$UpdateProfileStateDataImpl(
      {this.error,
      this.success = 0,
      this.gender = 0,
      this.dateOfBirth,
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
  final DateTime? transactionDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateProfileStateData(error: $error, success: $success, gender: $gender, dateOfBirth: $dateOfBirth, transactionDate: $transactionDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateProfileStateData'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('success', success))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))
      ..add(DiagnosticsProperty('transactionDate', transactionDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, error, success, gender, dateOfBirth, transactionDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileStateDataImplCopyWith<_$UpdateProfileStateDataImpl>
      get copyWith => __$$UpdateProfileStateDataImplCopyWithImpl<
          _$UpdateProfileStateDataImpl>(this, _$identity);
}

abstract class _UpdateProfileStateData implements UpdateProfileStateData {
  const factory _UpdateProfileStateData(
      {final String? error,
      final int success,
      final int gender,
      final DateTime? dateOfBirth,
      final DateTime? transactionDate}) = _$UpdateProfileStateDataImpl;

  @override
  String? get error;
  @override
  int get success;
  @override
  int get gender;
  @override
  DateTime? get dateOfBirth;
  @override
  DateTime? get transactionDate;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProfileStateDataImplCopyWith<_$UpdateProfileStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateProfileState {
  UpdateProfileStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateProfileStateData? data) initial,
    required TResult Function(UpdateProfileStateData? data) getError,
    required TResult Function(UpdateProfileStateData? data) success,
    required TResult Function(UpdateProfileStateData? data) dateOfBirth,
    required TResult Function(UpdateProfileStateData? data) setTransactionDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfileStateData? data)? initial,
    TResult? Function(UpdateProfileStateData? data)? getError,
    TResult? Function(UpdateProfileStateData? data)? success,
    TResult? Function(UpdateProfileStateData? data)? dateOfBirth,
    TResult? Function(UpdateProfileStateData? data)? setTransactionDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfileStateData? data)? initial,
    TResult Function(UpdateProfileStateData? data)? getError,
    TResult Function(UpdateProfileStateData? data)? success,
    TResult Function(UpdateProfileStateData? data)? dateOfBirth,
    TResult Function(UpdateProfileStateData? data)? setTransactionDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(GetDateOfBirth value) dateOfBirth,
    required TResult Function(SetTransactionDate value) setTransactionDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(GetDateOfBirth value)? dateOfBirth,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(GetDateOfBirth value)? dateOfBirth,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateProfileStateCopyWith<UpdateProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileStateCopyWith<$Res> {
  factory $UpdateProfileStateCopyWith(
          UpdateProfileState value, $Res Function(UpdateProfileState) then) =
      _$UpdateProfileStateCopyWithImpl<$Res, UpdateProfileState>;
  @useResult
  $Res call({UpdateProfileStateData? data});

  $UpdateProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UpdateProfileStateCopyWithImpl<$Res, $Val extends UpdateProfileState>
    implements $UpdateProfileStateCopyWith<$Res> {
  _$UpdateProfileStateCopyWithImpl(this._value, this._then);

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
              as UpdateProfileStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateProfileStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UpdateProfileStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UpdateProfileStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UpdateProfileStateData? data});

  @override
  $UpdateProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$InitialImpl>
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
              as UpdateProfileStateData?,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements Initial {
  const _$InitialImpl({this.data});

  @override
  final UpdateProfileStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateProfileState.initial(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateProfileState.initial'))
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
    required TResult Function(UpdateProfileStateData? data) initial,
    required TResult Function(UpdateProfileStateData? data) getError,
    required TResult Function(UpdateProfileStateData? data) success,
    required TResult Function(UpdateProfileStateData? data) dateOfBirth,
    required TResult Function(UpdateProfileStateData? data) setTransactionDate,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfileStateData? data)? initial,
    TResult? Function(UpdateProfileStateData? data)? getError,
    TResult? Function(UpdateProfileStateData? data)? success,
    TResult? Function(UpdateProfileStateData? data)? dateOfBirth,
    TResult? Function(UpdateProfileStateData? data)? setTransactionDate,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfileStateData? data)? initial,
    TResult Function(UpdateProfileStateData? data)? getError,
    TResult Function(UpdateProfileStateData? data)? success,
    TResult Function(UpdateProfileStateData? data)? dateOfBirth,
    TResult Function(UpdateProfileStateData? data)? setTransactionDate,
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
    required TResult Function(GetDateOfBirth value) dateOfBirth,
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
    TResult? Function(GetDateOfBirth value)? dateOfBirth,
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
    TResult Function(GetDateOfBirth value)? dateOfBirth,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements UpdateProfileState {
  const factory Initial({final UpdateProfileStateData? data}) = _$InitialImpl;

  @override
  UpdateProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $UpdateProfileStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UpdateProfileStateData? data});

  @override
  $UpdateProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$GetErrorImpl>
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
              as UpdateProfileStateData?,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl with DiagnosticableTreeMixin implements GetError {
  const _$GetErrorImpl({this.data});

  @override
  final UpdateProfileStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateProfileState.getError(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateProfileState.getError'))
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
    required TResult Function(UpdateProfileStateData? data) initial,
    required TResult Function(UpdateProfileStateData? data) getError,
    required TResult Function(UpdateProfileStateData? data) success,
    required TResult Function(UpdateProfileStateData? data) dateOfBirth,
    required TResult Function(UpdateProfileStateData? data) setTransactionDate,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfileStateData? data)? initial,
    TResult? Function(UpdateProfileStateData? data)? getError,
    TResult? Function(UpdateProfileStateData? data)? success,
    TResult? Function(UpdateProfileStateData? data)? dateOfBirth,
    TResult? Function(UpdateProfileStateData? data)? setTransactionDate,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfileStateData? data)? initial,
    TResult Function(UpdateProfileStateData? data)? getError,
    TResult Function(UpdateProfileStateData? data)? success,
    TResult Function(UpdateProfileStateData? data)? dateOfBirth,
    TResult Function(UpdateProfileStateData? data)? setTransactionDate,
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
    required TResult Function(GetDateOfBirth value) dateOfBirth,
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
    TResult? Function(GetDateOfBirth value)? dateOfBirth,
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
    TResult Function(GetDateOfBirth value)? dateOfBirth,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements UpdateProfileState {
  const factory GetError({final UpdateProfileStateData? data}) = _$GetErrorImpl;

  @override
  UpdateProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $UpdateProfileStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UpdateProfileStateData? data});

  @override
  $UpdateProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$SuccessImpl>
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
              as UpdateProfileStateData?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl with DiagnosticableTreeMixin implements Success {
  const _$SuccessImpl({this.data});

  @override
  final UpdateProfileStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateProfileState.success(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateProfileState.success'))
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
    required TResult Function(UpdateProfileStateData? data) initial,
    required TResult Function(UpdateProfileStateData? data) getError,
    required TResult Function(UpdateProfileStateData? data) success,
    required TResult Function(UpdateProfileStateData? data) dateOfBirth,
    required TResult Function(UpdateProfileStateData? data) setTransactionDate,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfileStateData? data)? initial,
    TResult? Function(UpdateProfileStateData? data)? getError,
    TResult? Function(UpdateProfileStateData? data)? success,
    TResult? Function(UpdateProfileStateData? data)? dateOfBirth,
    TResult? Function(UpdateProfileStateData? data)? setTransactionDate,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfileStateData? data)? initial,
    TResult Function(UpdateProfileStateData? data)? getError,
    TResult Function(UpdateProfileStateData? data)? success,
    TResult Function(UpdateProfileStateData? data)? dateOfBirth,
    TResult Function(UpdateProfileStateData? data)? setTransactionDate,
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
    required TResult Function(GetDateOfBirth value) dateOfBirth,
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
    TResult? Function(GetDateOfBirth value)? dateOfBirth,
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
    TResult Function(GetDateOfBirth value)? dateOfBirth,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements UpdateProfileState {
  const factory Success({final UpdateProfileStateData? data}) = _$SuccessImpl;

  @override
  UpdateProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDateOfBirthImplCopyWith<$Res>
    implements $UpdateProfileStateCopyWith<$Res> {
  factory _$$GetDateOfBirthImplCopyWith(_$GetDateOfBirthImpl value,
          $Res Function(_$GetDateOfBirthImpl) then) =
      __$$GetDateOfBirthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UpdateProfileStateData? data});

  @override
  $UpdateProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetDateOfBirthImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$GetDateOfBirthImpl>
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
              as UpdateProfileStateData?,
    ));
  }
}

/// @nodoc

class _$GetDateOfBirthImpl
    with DiagnosticableTreeMixin
    implements GetDateOfBirth {
  const _$GetDateOfBirthImpl({this.data});

  @override
  final UpdateProfileStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateProfileState.dateOfBirth(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateProfileState.dateOfBirth'))
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
    required TResult Function(UpdateProfileStateData? data) initial,
    required TResult Function(UpdateProfileStateData? data) getError,
    required TResult Function(UpdateProfileStateData? data) success,
    required TResult Function(UpdateProfileStateData? data) dateOfBirth,
    required TResult Function(UpdateProfileStateData? data) setTransactionDate,
  }) {
    return dateOfBirth(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfileStateData? data)? initial,
    TResult? Function(UpdateProfileStateData? data)? getError,
    TResult? Function(UpdateProfileStateData? data)? success,
    TResult? Function(UpdateProfileStateData? data)? dateOfBirth,
    TResult? Function(UpdateProfileStateData? data)? setTransactionDate,
  }) {
    return dateOfBirth?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfileStateData? data)? initial,
    TResult Function(UpdateProfileStateData? data)? getError,
    TResult Function(UpdateProfileStateData? data)? success,
    TResult Function(UpdateProfileStateData? data)? dateOfBirth,
    TResult Function(UpdateProfileStateData? data)? setTransactionDate,
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
    required TResult Function(GetDateOfBirth value) dateOfBirth,
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
    TResult? Function(GetDateOfBirth value)? dateOfBirth,
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
    TResult Function(GetDateOfBirth value)? dateOfBirth,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    required TResult orElse(),
  }) {
    if (dateOfBirth != null) {
      return dateOfBirth(this);
    }
    return orElse();
  }
}

abstract class GetDateOfBirth implements UpdateProfileState {
  const factory GetDateOfBirth({final UpdateProfileStateData? data}) =
      _$GetDateOfBirthImpl;

  @override
  UpdateProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetDateOfBirthImplCopyWith<_$GetDateOfBirthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetTransactionDateImplCopyWith<$Res>
    implements $UpdateProfileStateCopyWith<$Res> {
  factory _$$SetTransactionDateImplCopyWith(_$SetTransactionDateImpl value,
          $Res Function(_$SetTransactionDateImpl) then) =
      __$$SetTransactionDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UpdateProfileStateData? data});

  @override
  $UpdateProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetTransactionDateImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$SetTransactionDateImpl>
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpdateProfileStateData?,
    ));
  }
}

/// @nodoc

class _$SetTransactionDateImpl
    with DiagnosticableTreeMixin
    implements SetTransactionDate {
  const _$SetTransactionDateImpl({this.data});

  @override
  final UpdateProfileStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateProfileState.setTransactionDate(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'UpdateProfileState.setTransactionDate'))
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
    required TResult Function(UpdateProfileStateData? data) initial,
    required TResult Function(UpdateProfileStateData? data) getError,
    required TResult Function(UpdateProfileStateData? data) success,
    required TResult Function(UpdateProfileStateData? data) dateOfBirth,
    required TResult Function(UpdateProfileStateData? data) setTransactionDate,
  }) {
    return setTransactionDate(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfileStateData? data)? initial,
    TResult? Function(UpdateProfileStateData? data)? getError,
    TResult? Function(UpdateProfileStateData? data)? success,
    TResult? Function(UpdateProfileStateData? data)? dateOfBirth,
    TResult? Function(UpdateProfileStateData? data)? setTransactionDate,
  }) {
    return setTransactionDate?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfileStateData? data)? initial,
    TResult Function(UpdateProfileStateData? data)? getError,
    TResult Function(UpdateProfileStateData? data)? success,
    TResult Function(UpdateProfileStateData? data)? dateOfBirth,
    TResult Function(UpdateProfileStateData? data)? setTransactionDate,
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
    required TResult Function(GetDateOfBirth value) dateOfBirth,
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
    TResult? Function(GetDateOfBirth value)? dateOfBirth,
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
    TResult Function(GetDateOfBirth value)? dateOfBirth,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    required TResult orElse(),
  }) {
    if (setTransactionDate != null) {
      return setTransactionDate(this);
    }
    return orElse();
  }
}

abstract class SetTransactionDate implements UpdateProfileState {
  const factory SetTransactionDate({final UpdateProfileStateData? data}) =
      _$SetTransactionDateImpl;

  @override
  UpdateProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetTransactionDateImplCopyWith<_$SetTransactionDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
