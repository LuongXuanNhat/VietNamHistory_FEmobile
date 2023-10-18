// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupStateData {
  String get error => throw _privateConstructorUsedError;
  bool get isShowPass => throw _privateConstructorUsedError;
  bool get showConfirmPass => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateDataCopyWith<SignupStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateDataCopyWith<$Res> {
  factory $SignupStateDataCopyWith(
          SignupStateData value, $Res Function(SignupStateData) then) =
      _$SignupStateDataCopyWithImpl<$Res, SignupStateData>;
  @useResult
  $Res call({String error, bool isShowPass, bool showConfirmPass});
}

/// @nodoc
class _$SignupStateDataCopyWithImpl<$Res, $Val extends SignupStateData>
    implements $SignupStateDataCopyWith<$Res> {
  _$SignupStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? isShowPass = null,
    Object? showConfirmPass = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isShowPass: null == isShowPass
          ? _value.isShowPass
          : isShowPass // ignore: cast_nullable_to_non_nullable
              as bool,
      showConfirmPass: null == showConfirmPass
          ? _value.showConfirmPass
          : showConfirmPass // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupStateDataImplCopyWith<$Res>
    implements $SignupStateDataCopyWith<$Res> {
  factory _$$SignupStateDataImplCopyWith(_$SignupStateDataImpl value,
          $Res Function(_$SignupStateDataImpl) then) =
      __$$SignupStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, bool isShowPass, bool showConfirmPass});
}

/// @nodoc
class __$$SignupStateDataImplCopyWithImpl<$Res>
    extends _$SignupStateDataCopyWithImpl<$Res, _$SignupStateDataImpl>
    implements _$$SignupStateDataImplCopyWith<$Res> {
  __$$SignupStateDataImplCopyWithImpl(
      _$SignupStateDataImpl _value, $Res Function(_$SignupStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? isShowPass = null,
    Object? showConfirmPass = null,
  }) {
    return _then(_$SignupStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isShowPass: null == isShowPass
          ? _value.isShowPass
          : isShowPass // ignore: cast_nullable_to_non_nullable
              as bool,
      showConfirmPass: null == showConfirmPass
          ? _value.showConfirmPass
          : showConfirmPass // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignupStateDataImpl
    with DiagnosticableTreeMixin
    implements _SignupStateData {
  const _$SignupStateDataImpl(
      {this.error = '', this.isShowPass = true, this.showConfirmPass = true});

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final bool isShowPass;
  @override
  @JsonKey()
  final bool showConfirmPass;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignupStateData(error: $error, isShowPass: $isShowPass, showConfirmPass: $showConfirmPass)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignupStateData'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('isShowPass', isShowPass))
      ..add(DiagnosticsProperty('showConfirmPass', showConfirmPass));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isShowPass, isShowPass) ||
                other.isShowPass == isShowPass) &&
            (identical(other.showConfirmPass, showConfirmPass) ||
                other.showConfirmPass == showConfirmPass));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, isShowPass, showConfirmPass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupStateDataImplCopyWith<_$SignupStateDataImpl> get copyWith =>
      __$$SignupStateDataImplCopyWithImpl<_$SignupStateDataImpl>(
          this, _$identity);
}

abstract class _SignupStateData implements SignupStateData {
  const factory _SignupStateData(
      {final String error,
      final bool isShowPass,
      final bool showConfirmPass}) = _$SignupStateDataImpl;

  @override
  String get error;
  @override
  bool get isShowPass;
  @override
  bool get showConfirmPass;
  @override
  @JsonKey(ignore: true)
  _$$SignupStateDataImplCopyWith<_$SignupStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignupState {
  SignupStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignupStateData? data) initial,
    required TResult Function(SignupStateData? data) getError,
    required TResult Function(SignupStateData? data) showPass,
    required TResult Function(SignupStateData? data) showConfirmPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignupStateData? data)? initial,
    TResult? Function(SignupStateData? data)? getError,
    TResult? Function(SignupStateData? data)? showPass,
    TResult? Function(SignupStateData? data)? showConfirmPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignupStateData? data)? initial,
    TResult Function(SignupStateData? data)? getError,
    TResult Function(SignupStateData? data)? showPass,
    TResult Function(SignupStateData? data)? showConfirmPass,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(ShowPass value) showPass,
    required TResult Function(ShowConfirmPass value) showConfirmPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(ShowPass value)? showPass,
    TResult? Function(ShowConfirmPass value)? showConfirmPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(ShowPass value)? showPass,
    TResult Function(ShowConfirmPass value)? showConfirmPass,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
  @useResult
  $Res call({SignupStateData? data});

  $SignupStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

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
              as SignupStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignupStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SignupStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignupStateData? data});

  @override
  $SignupStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$InitialImpl>
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
              as SignupStateData?,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements Initial {
  const _$InitialImpl({this.data});

  @override
  final SignupStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignupState.initial(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignupState.initial'))
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
    required TResult Function(SignupStateData? data) initial,
    required TResult Function(SignupStateData? data) getError,
    required TResult Function(SignupStateData? data) showPass,
    required TResult Function(SignupStateData? data) showConfirmPass,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignupStateData? data)? initial,
    TResult? Function(SignupStateData? data)? getError,
    TResult? Function(SignupStateData? data)? showPass,
    TResult? Function(SignupStateData? data)? showConfirmPass,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignupStateData? data)? initial,
    TResult Function(SignupStateData? data)? getError,
    TResult Function(SignupStateData? data)? showPass,
    TResult Function(SignupStateData? data)? showConfirmPass,
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
    required TResult Function(ShowPass value) showPass,
    required TResult Function(ShowConfirmPass value) showConfirmPass,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(ShowPass value)? showPass,
    TResult? Function(ShowConfirmPass value)? showConfirmPass,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(ShowPass value)? showPass,
    TResult Function(ShowConfirmPass value)? showConfirmPass,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SignupState {
  const factory Initial({final SignupStateData? data}) = _$InitialImpl;

  @override
  SignupStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignupStateData? data});

  @override
  $SignupStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$GetErrorImpl>
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
              as SignupStateData?,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl with DiagnosticableTreeMixin implements GetError {
  const _$GetErrorImpl({this.data});

  @override
  final SignupStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignupState.getError(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignupState.getError'))
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
    required TResult Function(SignupStateData? data) initial,
    required TResult Function(SignupStateData? data) getError,
    required TResult Function(SignupStateData? data) showPass,
    required TResult Function(SignupStateData? data) showConfirmPass,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignupStateData? data)? initial,
    TResult? Function(SignupStateData? data)? getError,
    TResult? Function(SignupStateData? data)? showPass,
    TResult? Function(SignupStateData? data)? showConfirmPass,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignupStateData? data)? initial,
    TResult Function(SignupStateData? data)? getError,
    TResult Function(SignupStateData? data)? showPass,
    TResult Function(SignupStateData? data)? showConfirmPass,
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
    required TResult Function(ShowPass value) showPass,
    required TResult Function(ShowConfirmPass value) showConfirmPass,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(ShowPass value)? showPass,
    TResult? Function(ShowConfirmPass value)? showConfirmPass,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(ShowPass value)? showPass,
    TResult Function(ShowConfirmPass value)? showConfirmPass,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements SignupState {
  const factory GetError({final SignupStateData? data}) = _$GetErrorImpl;

  @override
  SignupStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowPassImplCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$ShowPassImplCopyWith(
          _$ShowPassImpl value, $Res Function(_$ShowPassImpl) then) =
      __$$ShowPassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignupStateData? data});

  @override
  $SignupStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ShowPassImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$ShowPassImpl>
    implements _$$ShowPassImplCopyWith<$Res> {
  __$$ShowPassImplCopyWithImpl(
      _$ShowPassImpl _value, $Res Function(_$ShowPassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ShowPassImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignupStateData?,
    ));
  }
}

/// @nodoc

class _$ShowPassImpl with DiagnosticableTreeMixin implements ShowPass {
  const _$ShowPassImpl({this.data});

  @override
  final SignupStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignupState.showPass(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignupState.showPass'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowPassImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowPassImplCopyWith<_$ShowPassImpl> get copyWith =>
      __$$ShowPassImplCopyWithImpl<_$ShowPassImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignupStateData? data) initial,
    required TResult Function(SignupStateData? data) getError,
    required TResult Function(SignupStateData? data) showPass,
    required TResult Function(SignupStateData? data) showConfirmPass,
  }) {
    return showPass(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignupStateData? data)? initial,
    TResult? Function(SignupStateData? data)? getError,
    TResult? Function(SignupStateData? data)? showPass,
    TResult? Function(SignupStateData? data)? showConfirmPass,
  }) {
    return showPass?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignupStateData? data)? initial,
    TResult Function(SignupStateData? data)? getError,
    TResult Function(SignupStateData? data)? showPass,
    TResult Function(SignupStateData? data)? showConfirmPass,
    required TResult orElse(),
  }) {
    if (showPass != null) {
      return showPass(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(ShowPass value) showPass,
    required TResult Function(ShowConfirmPass value) showConfirmPass,
  }) {
    return showPass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(ShowPass value)? showPass,
    TResult? Function(ShowConfirmPass value)? showConfirmPass,
  }) {
    return showPass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(ShowPass value)? showPass,
    TResult Function(ShowConfirmPass value)? showConfirmPass,
    required TResult orElse(),
  }) {
    if (showPass != null) {
      return showPass(this);
    }
    return orElse();
  }
}

abstract class ShowPass implements SignupState {
  const factory ShowPass({final SignupStateData? data}) = _$ShowPassImpl;

  @override
  SignupStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ShowPassImplCopyWith<_$ShowPassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowConfirmPassImplCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$ShowConfirmPassImplCopyWith(_$ShowConfirmPassImpl value,
          $Res Function(_$ShowConfirmPassImpl) then) =
      __$$ShowConfirmPassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignupStateData? data});

  @override
  $SignupStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ShowConfirmPassImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$ShowConfirmPassImpl>
    implements _$$ShowConfirmPassImplCopyWith<$Res> {
  __$$ShowConfirmPassImplCopyWithImpl(
      _$ShowConfirmPassImpl _value, $Res Function(_$ShowConfirmPassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ShowConfirmPassImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignupStateData?,
    ));
  }
}

/// @nodoc

class _$ShowConfirmPassImpl
    with DiagnosticableTreeMixin
    implements ShowConfirmPass {
  const _$ShowConfirmPassImpl({this.data});

  @override
  final SignupStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignupState.showConfirmPass(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignupState.showConfirmPass'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowConfirmPassImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowConfirmPassImplCopyWith<_$ShowConfirmPassImpl> get copyWith =>
      __$$ShowConfirmPassImplCopyWithImpl<_$ShowConfirmPassImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignupStateData? data) initial,
    required TResult Function(SignupStateData? data) getError,
    required TResult Function(SignupStateData? data) showPass,
    required TResult Function(SignupStateData? data) showConfirmPass,
  }) {
    return showConfirmPass(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignupStateData? data)? initial,
    TResult? Function(SignupStateData? data)? getError,
    TResult? Function(SignupStateData? data)? showPass,
    TResult? Function(SignupStateData? data)? showConfirmPass,
  }) {
    return showConfirmPass?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignupStateData? data)? initial,
    TResult Function(SignupStateData? data)? getError,
    TResult Function(SignupStateData? data)? showPass,
    TResult Function(SignupStateData? data)? showConfirmPass,
    required TResult orElse(),
  }) {
    if (showConfirmPass != null) {
      return showConfirmPass(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(ShowPass value) showPass,
    required TResult Function(ShowConfirmPass value) showConfirmPass,
  }) {
    return showConfirmPass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(ShowPass value)? showPass,
    TResult? Function(ShowConfirmPass value)? showConfirmPass,
  }) {
    return showConfirmPass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(ShowPass value)? showPass,
    TResult Function(ShowConfirmPass value)? showConfirmPass,
    required TResult orElse(),
  }) {
    if (showConfirmPass != null) {
      return showConfirmPass(this);
    }
    return orElse();
  }
}

abstract class ShowConfirmPass implements SignupState {
  const factory ShowConfirmPass({final SignupStateData? data}) =
      _$ShowConfirmPassImpl;

  @override
  SignupStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ShowConfirmPassImplCopyWith<_$ShowConfirmPassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
