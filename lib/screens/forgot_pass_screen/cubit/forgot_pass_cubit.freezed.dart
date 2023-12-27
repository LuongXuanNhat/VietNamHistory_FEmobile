// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_pass_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPassStateData {
  dynamic get error => throw _privateConstructorUsedError;
  ForgotPassSendEmail? get sendEmail => throw _privateConstructorUsedError;
  ForgotPassConfirmEmail? get confirmEmail =>
      throw _privateConstructorUsedError;
  dynamic get isShow => throw _privateConstructorUsedError;
  SuccesResponse? get succesResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPassStateDataCopyWith<ForgotPassStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPassStateDataCopyWith<$Res> {
  factory $ForgotPassStateDataCopyWith(
          ForgotPassStateData value, $Res Function(ForgotPassStateData) then) =
      _$ForgotPassStateDataCopyWithImpl<$Res, ForgotPassStateData>;
  @useResult
  $Res call(
      {dynamic error,
      ForgotPassSendEmail? sendEmail,
      ForgotPassConfirmEmail? confirmEmail,
      dynamic isShow,
      SuccesResponse? succesResponse});
}

/// @nodoc
class _$ForgotPassStateDataCopyWithImpl<$Res, $Val extends ForgotPassStateData>
    implements $ForgotPassStateDataCopyWith<$Res> {
  _$ForgotPassStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? sendEmail = freezed,
    Object? confirmEmail = freezed,
    Object? isShow = freezed,
    Object? succesResponse = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sendEmail: freezed == sendEmail
          ? _value.sendEmail
          : sendEmail // ignore: cast_nullable_to_non_nullable
              as ForgotPassSendEmail?,
      confirmEmail: freezed == confirmEmail
          ? _value.confirmEmail
          : confirmEmail // ignore: cast_nullable_to_non_nullable
              as ForgotPassConfirmEmail?,
      isShow: freezed == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as dynamic,
      succesResponse: freezed == succesResponse
          ? _value.succesResponse
          : succesResponse // ignore: cast_nullable_to_non_nullable
              as SuccesResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPassStateDataImplCopyWith<$Res>
    implements $ForgotPassStateDataCopyWith<$Res> {
  factory _$$ForgotPassStateDataImplCopyWith(_$ForgotPassStateDataImpl value,
          $Res Function(_$ForgotPassStateDataImpl) then) =
      __$$ForgotPassStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic error,
      ForgotPassSendEmail? sendEmail,
      ForgotPassConfirmEmail? confirmEmail,
      dynamic isShow,
      SuccesResponse? succesResponse});
}

/// @nodoc
class __$$ForgotPassStateDataImplCopyWithImpl<$Res>
    extends _$ForgotPassStateDataCopyWithImpl<$Res, _$ForgotPassStateDataImpl>
    implements _$$ForgotPassStateDataImplCopyWith<$Res> {
  __$$ForgotPassStateDataImplCopyWithImpl(_$ForgotPassStateDataImpl _value,
      $Res Function(_$ForgotPassStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? sendEmail = freezed,
    Object? confirmEmail = freezed,
    Object? isShow = freezed,
    Object? succesResponse = freezed,
  }) {
    return _then(_$ForgotPassStateDataImpl(
      error: freezed == error ? _value.error! : error,
      sendEmail: freezed == sendEmail
          ? _value.sendEmail
          : sendEmail // ignore: cast_nullable_to_non_nullable
              as ForgotPassSendEmail?,
      confirmEmail: freezed == confirmEmail
          ? _value.confirmEmail
          : confirmEmail // ignore: cast_nullable_to_non_nullable
              as ForgotPassConfirmEmail?,
      isShow: freezed == isShow ? _value.isShow! : isShow,
      succesResponse: freezed == succesResponse
          ? _value.succesResponse
          : succesResponse // ignore: cast_nullable_to_non_nullable
              as SuccesResponse?,
    ));
  }
}

/// @nodoc

class _$ForgotPassStateDataImpl implements _ForgotPassStateData {
  const _$ForgotPassStateDataImpl(
      {this.error = '',
      this.sendEmail,
      this.confirmEmail,
      this.isShow = true,
      this.succesResponse});

  @override
  @JsonKey()
  final dynamic error;
  @override
  final ForgotPassSendEmail? sendEmail;
  @override
  final ForgotPassConfirmEmail? confirmEmail;
  @override
  @JsonKey()
  final dynamic isShow;
  @override
  final SuccesResponse? succesResponse;

  @override
  String toString() {
    return 'ForgotPassStateData(error: $error, sendEmail: $sendEmail, confirmEmail: $confirmEmail, isShow: $isShow, succesResponse: $succesResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPassStateDataImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.sendEmail, sendEmail) ||
                other.sendEmail == sendEmail) &&
            (identical(other.confirmEmail, confirmEmail) ||
                other.confirmEmail == confirmEmail) &&
            const DeepCollectionEquality().equals(other.isShow, isShow) &&
            (identical(other.succesResponse, succesResponse) ||
                other.succesResponse == succesResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      sendEmail,
      confirmEmail,
      const DeepCollectionEquality().hash(isShow),
      succesResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPassStateDataImplCopyWith<_$ForgotPassStateDataImpl> get copyWith =>
      __$$ForgotPassStateDataImplCopyWithImpl<_$ForgotPassStateDataImpl>(
          this, _$identity);
}

abstract class _ForgotPassStateData implements ForgotPassStateData {
  const factory _ForgotPassStateData(
      {final dynamic error,
      final ForgotPassSendEmail? sendEmail,
      final ForgotPassConfirmEmail? confirmEmail,
      final dynamic isShow,
      final SuccesResponse? succesResponse}) = _$ForgotPassStateDataImpl;

  @override
  dynamic get error;
  @override
  ForgotPassSendEmail? get sendEmail;
  @override
  ForgotPassConfirmEmail? get confirmEmail;
  @override
  dynamic get isShow;
  @override
  SuccesResponse? get succesResponse;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPassStateDataImplCopyWith<_$ForgotPassStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotPassState {
  ForgotPassStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForgotPassStateData data) initial,
    required TResult Function(ForgotPassStateData data) error,
    required TResult Function(ForgotPassStateData data) sendEmail,
    required TResult Function(ForgotPassStateData data) confirmEmail,
    required TResult Function(ForgotPassStateData data) succes,
    required TResult Function(ForgotPassStateData data) isShow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassStateData data)? initial,
    TResult? Function(ForgotPassStateData data)? error,
    TResult? Function(ForgotPassStateData data)? sendEmail,
    TResult? Function(ForgotPassStateData data)? confirmEmail,
    TResult? Function(ForgotPassStateData data)? succes,
    TResult? Function(ForgotPassStateData data)? isShow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForgotPassStateData data)? initial,
    TResult Function(ForgotPassStateData data)? error,
    TResult Function(ForgotPassStateData data)? sendEmail,
    TResult Function(ForgotPassStateData data)? confirmEmail,
    TResult Function(ForgotPassStateData data)? succes,
    TResult Function(ForgotPassStateData data)? isShow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(SendEmail value) sendEmail,
    required TResult Function(ConfirmEmail value) confirmEmail,
    required TResult Function(Succes value) succes,
    required TResult Function(IsShow value) isShow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(SendEmail value)? sendEmail,
    TResult? Function(ConfirmEmail value)? confirmEmail,
    TResult? Function(Succes value)? succes,
    TResult? Function(IsShow value)? isShow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(SendEmail value)? sendEmail,
    TResult Function(ConfirmEmail value)? confirmEmail,
    TResult Function(Succes value)? succes,
    TResult Function(IsShow value)? isShow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPassStateCopyWith<ForgotPassState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPassStateCopyWith<$Res> {
  factory $ForgotPassStateCopyWith(
          ForgotPassState value, $Res Function(ForgotPassState) then) =
      _$ForgotPassStateCopyWithImpl<$Res, ForgotPassState>;
  @useResult
  $Res call({ForgotPassStateData data});

  $ForgotPassStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ForgotPassStateCopyWithImpl<$Res, $Val extends ForgotPassState>
    implements $ForgotPassStateCopyWith<$Res> {
  _$ForgotPassStateCopyWithImpl(this._value, this._then);

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
              as ForgotPassStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ForgotPassStateDataCopyWith<$Res> get data {
    return $ForgotPassStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ForgotPassStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForgotPassStateData data});

  @override
  $ForgotPassStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ForgotPassStateCopyWithImpl<$Res, _$InitialImpl>
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
              as ForgotPassStateData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({required this.data});

  @override
  final ForgotPassStateData data;

  @override
  String toString() {
    return 'ForgotPassState.initial(data: $data)';
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
    required TResult Function(ForgotPassStateData data) initial,
    required TResult Function(ForgotPassStateData data) error,
    required TResult Function(ForgotPassStateData data) sendEmail,
    required TResult Function(ForgotPassStateData data) confirmEmail,
    required TResult Function(ForgotPassStateData data) succes,
    required TResult Function(ForgotPassStateData data) isShow,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassStateData data)? initial,
    TResult? Function(ForgotPassStateData data)? error,
    TResult? Function(ForgotPassStateData data)? sendEmail,
    TResult? Function(ForgotPassStateData data)? confirmEmail,
    TResult? Function(ForgotPassStateData data)? succes,
    TResult? Function(ForgotPassStateData data)? isShow,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForgotPassStateData data)? initial,
    TResult Function(ForgotPassStateData data)? error,
    TResult Function(ForgotPassStateData data)? sendEmail,
    TResult Function(ForgotPassStateData data)? confirmEmail,
    TResult Function(ForgotPassStateData data)? succes,
    TResult Function(ForgotPassStateData data)? isShow,
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
    required TResult Function(SendEmail value) sendEmail,
    required TResult Function(ConfirmEmail value) confirmEmail,
    required TResult Function(Succes value) succes,
    required TResult Function(IsShow value) isShow,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(SendEmail value)? sendEmail,
    TResult? Function(ConfirmEmail value)? confirmEmail,
    TResult? Function(Succes value)? succes,
    TResult? Function(IsShow value)? isShow,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(SendEmail value)? sendEmail,
    TResult Function(ConfirmEmail value)? confirmEmail,
    TResult Function(Succes value)? succes,
    TResult Function(IsShow value)? isShow,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ForgotPassState {
  const factory Initial({required final ForgotPassStateData data}) =
      _$InitialImpl;

  @override
  ForgotPassStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $ForgotPassStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForgotPassStateData data});

  @override
  $ForgotPassStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ForgotPassStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ErrorImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ForgotPassStateData,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.data});

  @override
  final ForgotPassStateData data;

  @override
  String toString() {
    return 'ForgotPassState.error(data: $data)';
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
    required TResult Function(ForgotPassStateData data) initial,
    required TResult Function(ForgotPassStateData data) error,
    required TResult Function(ForgotPassStateData data) sendEmail,
    required TResult Function(ForgotPassStateData data) confirmEmail,
    required TResult Function(ForgotPassStateData data) succes,
    required TResult Function(ForgotPassStateData data) isShow,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassStateData data)? initial,
    TResult? Function(ForgotPassStateData data)? error,
    TResult? Function(ForgotPassStateData data)? sendEmail,
    TResult? Function(ForgotPassStateData data)? confirmEmail,
    TResult? Function(ForgotPassStateData data)? succes,
    TResult? Function(ForgotPassStateData data)? isShow,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForgotPassStateData data)? initial,
    TResult Function(ForgotPassStateData data)? error,
    TResult Function(ForgotPassStateData data)? sendEmail,
    TResult Function(ForgotPassStateData data)? confirmEmail,
    TResult Function(ForgotPassStateData data)? succes,
    TResult Function(ForgotPassStateData data)? isShow,
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
    required TResult Function(SendEmail value) sendEmail,
    required TResult Function(ConfirmEmail value) confirmEmail,
    required TResult Function(Succes value) succes,
    required TResult Function(IsShow value) isShow,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(SendEmail value)? sendEmail,
    TResult? Function(ConfirmEmail value)? confirmEmail,
    TResult? Function(Succes value)? succes,
    TResult? Function(IsShow value)? isShow,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(SendEmail value)? sendEmail,
    TResult Function(ConfirmEmail value)? confirmEmail,
    TResult Function(Succes value)? succes,
    TResult Function(IsShow value)? isShow,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ForgotPassState {
  const factory Error({required final ForgotPassStateData data}) = _$ErrorImpl;

  @override
  ForgotPassStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendEmailImplCopyWith<$Res>
    implements $ForgotPassStateCopyWith<$Res> {
  factory _$$SendEmailImplCopyWith(
          _$SendEmailImpl value, $Res Function(_$SendEmailImpl) then) =
      __$$SendEmailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForgotPassStateData data});

  @override
  $ForgotPassStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SendEmailImplCopyWithImpl<$Res>
    extends _$ForgotPassStateCopyWithImpl<$Res, _$SendEmailImpl>
    implements _$$SendEmailImplCopyWith<$Res> {
  __$$SendEmailImplCopyWithImpl(
      _$SendEmailImpl _value, $Res Function(_$SendEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SendEmailImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ForgotPassStateData,
    ));
  }
}

/// @nodoc

class _$SendEmailImpl implements SendEmail {
  const _$SendEmailImpl({required this.data});

  @override
  final ForgotPassStateData data;

  @override
  String toString() {
    return 'ForgotPassState.sendEmail(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendEmailImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendEmailImplCopyWith<_$SendEmailImpl> get copyWith =>
      __$$SendEmailImplCopyWithImpl<_$SendEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForgotPassStateData data) initial,
    required TResult Function(ForgotPassStateData data) error,
    required TResult Function(ForgotPassStateData data) sendEmail,
    required TResult Function(ForgotPassStateData data) confirmEmail,
    required TResult Function(ForgotPassStateData data) succes,
    required TResult Function(ForgotPassStateData data) isShow,
  }) {
    return sendEmail(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassStateData data)? initial,
    TResult? Function(ForgotPassStateData data)? error,
    TResult? Function(ForgotPassStateData data)? sendEmail,
    TResult? Function(ForgotPassStateData data)? confirmEmail,
    TResult? Function(ForgotPassStateData data)? succes,
    TResult? Function(ForgotPassStateData data)? isShow,
  }) {
    return sendEmail?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForgotPassStateData data)? initial,
    TResult Function(ForgotPassStateData data)? error,
    TResult Function(ForgotPassStateData data)? sendEmail,
    TResult Function(ForgotPassStateData data)? confirmEmail,
    TResult Function(ForgotPassStateData data)? succes,
    TResult Function(ForgotPassStateData data)? isShow,
    required TResult orElse(),
  }) {
    if (sendEmail != null) {
      return sendEmail(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(SendEmail value) sendEmail,
    required TResult Function(ConfirmEmail value) confirmEmail,
    required TResult Function(Succes value) succes,
    required TResult Function(IsShow value) isShow,
  }) {
    return sendEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(SendEmail value)? sendEmail,
    TResult? Function(ConfirmEmail value)? confirmEmail,
    TResult? Function(Succes value)? succes,
    TResult? Function(IsShow value)? isShow,
  }) {
    return sendEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(SendEmail value)? sendEmail,
    TResult Function(ConfirmEmail value)? confirmEmail,
    TResult Function(Succes value)? succes,
    TResult Function(IsShow value)? isShow,
    required TResult orElse(),
  }) {
    if (sendEmail != null) {
      return sendEmail(this);
    }
    return orElse();
  }
}

abstract class SendEmail implements ForgotPassState {
  const factory SendEmail({required final ForgotPassStateData data}) =
      _$SendEmailImpl;

  @override
  ForgotPassStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$SendEmailImplCopyWith<_$SendEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmEmailImplCopyWith<$Res>
    implements $ForgotPassStateCopyWith<$Res> {
  factory _$$ConfirmEmailImplCopyWith(
          _$ConfirmEmailImpl value, $Res Function(_$ConfirmEmailImpl) then) =
      __$$ConfirmEmailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForgotPassStateData data});

  @override
  $ForgotPassStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ConfirmEmailImplCopyWithImpl<$Res>
    extends _$ForgotPassStateCopyWithImpl<$Res, _$ConfirmEmailImpl>
    implements _$$ConfirmEmailImplCopyWith<$Res> {
  __$$ConfirmEmailImplCopyWithImpl(
      _$ConfirmEmailImpl _value, $Res Function(_$ConfirmEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ConfirmEmailImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ForgotPassStateData,
    ));
  }
}

/// @nodoc

class _$ConfirmEmailImpl implements ConfirmEmail {
  const _$ConfirmEmailImpl({required this.data});

  @override
  final ForgotPassStateData data;

  @override
  String toString() {
    return 'ForgotPassState.confirmEmail(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmEmailImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmEmailImplCopyWith<_$ConfirmEmailImpl> get copyWith =>
      __$$ConfirmEmailImplCopyWithImpl<_$ConfirmEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForgotPassStateData data) initial,
    required TResult Function(ForgotPassStateData data) error,
    required TResult Function(ForgotPassStateData data) sendEmail,
    required TResult Function(ForgotPassStateData data) confirmEmail,
    required TResult Function(ForgotPassStateData data) succes,
    required TResult Function(ForgotPassStateData data) isShow,
  }) {
    return confirmEmail(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassStateData data)? initial,
    TResult? Function(ForgotPassStateData data)? error,
    TResult? Function(ForgotPassStateData data)? sendEmail,
    TResult? Function(ForgotPassStateData data)? confirmEmail,
    TResult? Function(ForgotPassStateData data)? succes,
    TResult? Function(ForgotPassStateData data)? isShow,
  }) {
    return confirmEmail?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForgotPassStateData data)? initial,
    TResult Function(ForgotPassStateData data)? error,
    TResult Function(ForgotPassStateData data)? sendEmail,
    TResult Function(ForgotPassStateData data)? confirmEmail,
    TResult Function(ForgotPassStateData data)? succes,
    TResult Function(ForgotPassStateData data)? isShow,
    required TResult orElse(),
  }) {
    if (confirmEmail != null) {
      return confirmEmail(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(SendEmail value) sendEmail,
    required TResult Function(ConfirmEmail value) confirmEmail,
    required TResult Function(Succes value) succes,
    required TResult Function(IsShow value) isShow,
  }) {
    return confirmEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(SendEmail value)? sendEmail,
    TResult? Function(ConfirmEmail value)? confirmEmail,
    TResult? Function(Succes value)? succes,
    TResult? Function(IsShow value)? isShow,
  }) {
    return confirmEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(SendEmail value)? sendEmail,
    TResult Function(ConfirmEmail value)? confirmEmail,
    TResult Function(Succes value)? succes,
    TResult Function(IsShow value)? isShow,
    required TResult orElse(),
  }) {
    if (confirmEmail != null) {
      return confirmEmail(this);
    }
    return orElse();
  }
}

abstract class ConfirmEmail implements ForgotPassState {
  const factory ConfirmEmail({required final ForgotPassStateData data}) =
      _$ConfirmEmailImpl;

  @override
  ForgotPassStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmEmailImplCopyWith<_$ConfirmEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccesImplCopyWith<$Res>
    implements $ForgotPassStateCopyWith<$Res> {
  factory _$$SuccesImplCopyWith(
          _$SuccesImpl value, $Res Function(_$SuccesImpl) then) =
      __$$SuccesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForgotPassStateData data});

  @override
  $ForgotPassStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccesImplCopyWithImpl<$Res>
    extends _$ForgotPassStateCopyWithImpl<$Res, _$SuccesImpl>
    implements _$$SuccesImplCopyWith<$Res> {
  __$$SuccesImplCopyWithImpl(
      _$SuccesImpl _value, $Res Function(_$SuccesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccesImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ForgotPassStateData,
    ));
  }
}

/// @nodoc

class _$SuccesImpl implements Succes {
  const _$SuccesImpl({required this.data});

  @override
  final ForgotPassStateData data;

  @override
  String toString() {
    return 'ForgotPassState.succes(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccesImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccesImplCopyWith<_$SuccesImpl> get copyWith =>
      __$$SuccesImplCopyWithImpl<_$SuccesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForgotPassStateData data) initial,
    required TResult Function(ForgotPassStateData data) error,
    required TResult Function(ForgotPassStateData data) sendEmail,
    required TResult Function(ForgotPassStateData data) confirmEmail,
    required TResult Function(ForgotPassStateData data) succes,
    required TResult Function(ForgotPassStateData data) isShow,
  }) {
    return succes(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassStateData data)? initial,
    TResult? Function(ForgotPassStateData data)? error,
    TResult? Function(ForgotPassStateData data)? sendEmail,
    TResult? Function(ForgotPassStateData data)? confirmEmail,
    TResult? Function(ForgotPassStateData data)? succes,
    TResult? Function(ForgotPassStateData data)? isShow,
  }) {
    return succes?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForgotPassStateData data)? initial,
    TResult Function(ForgotPassStateData data)? error,
    TResult Function(ForgotPassStateData data)? sendEmail,
    TResult Function(ForgotPassStateData data)? confirmEmail,
    TResult Function(ForgotPassStateData data)? succes,
    TResult Function(ForgotPassStateData data)? isShow,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(SendEmail value) sendEmail,
    required TResult Function(ConfirmEmail value) confirmEmail,
    required TResult Function(Succes value) succes,
    required TResult Function(IsShow value) isShow,
  }) {
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(SendEmail value)? sendEmail,
    TResult? Function(ConfirmEmail value)? confirmEmail,
    TResult? Function(Succes value)? succes,
    TResult? Function(IsShow value)? isShow,
  }) {
    return succes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(SendEmail value)? sendEmail,
    TResult Function(ConfirmEmail value)? confirmEmail,
    TResult Function(Succes value)? succes,
    TResult Function(IsShow value)? isShow,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes(this);
    }
    return orElse();
  }
}

abstract class Succes implements ForgotPassState {
  const factory Succes({required final ForgotPassStateData data}) =
      _$SuccesImpl;

  @override
  ForgotPassStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$SuccesImplCopyWith<_$SuccesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsShowImplCopyWith<$Res>
    implements $ForgotPassStateCopyWith<$Res> {
  factory _$$IsShowImplCopyWith(
          _$IsShowImpl value, $Res Function(_$IsShowImpl) then) =
      __$$IsShowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForgotPassStateData data});

  @override
  $ForgotPassStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$IsShowImplCopyWithImpl<$Res>
    extends _$ForgotPassStateCopyWithImpl<$Res, _$IsShowImpl>
    implements _$$IsShowImplCopyWith<$Res> {
  __$$IsShowImplCopyWithImpl(
      _$IsShowImpl _value, $Res Function(_$IsShowImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$IsShowImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ForgotPassStateData,
    ));
  }
}

/// @nodoc

class _$IsShowImpl implements IsShow {
  const _$IsShowImpl({required this.data});

  @override
  final ForgotPassStateData data;

  @override
  String toString() {
    return 'ForgotPassState.isShow(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsShowImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsShowImplCopyWith<_$IsShowImpl> get copyWith =>
      __$$IsShowImplCopyWithImpl<_$IsShowImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForgotPassStateData data) initial,
    required TResult Function(ForgotPassStateData data) error,
    required TResult Function(ForgotPassStateData data) sendEmail,
    required TResult Function(ForgotPassStateData data) confirmEmail,
    required TResult Function(ForgotPassStateData data) succes,
    required TResult Function(ForgotPassStateData data) isShow,
  }) {
    return isShow(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassStateData data)? initial,
    TResult? Function(ForgotPassStateData data)? error,
    TResult? Function(ForgotPassStateData data)? sendEmail,
    TResult? Function(ForgotPassStateData data)? confirmEmail,
    TResult? Function(ForgotPassStateData data)? succes,
    TResult? Function(ForgotPassStateData data)? isShow,
  }) {
    return isShow?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForgotPassStateData data)? initial,
    TResult Function(ForgotPassStateData data)? error,
    TResult Function(ForgotPassStateData data)? sendEmail,
    TResult Function(ForgotPassStateData data)? confirmEmail,
    TResult Function(ForgotPassStateData data)? succes,
    TResult Function(ForgotPassStateData data)? isShow,
    required TResult orElse(),
  }) {
    if (isShow != null) {
      return isShow(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(SendEmail value) sendEmail,
    required TResult Function(ConfirmEmail value) confirmEmail,
    required TResult Function(Succes value) succes,
    required TResult Function(IsShow value) isShow,
  }) {
    return isShow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(SendEmail value)? sendEmail,
    TResult? Function(ConfirmEmail value)? confirmEmail,
    TResult? Function(Succes value)? succes,
    TResult? Function(IsShow value)? isShow,
  }) {
    return isShow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(SendEmail value)? sendEmail,
    TResult Function(ConfirmEmail value)? confirmEmail,
    TResult Function(Succes value)? succes,
    TResult Function(IsShow value)? isShow,
    required TResult orElse(),
  }) {
    if (isShow != null) {
      return isShow(this);
    }
    return orElse();
  }
}

abstract class IsShow implements ForgotPassState {
  const factory IsShow({required final ForgotPassStateData data}) =
      _$IsShowImpl;

  @override
  ForgotPassStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$IsShowImplCopyWith<_$IsShowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
