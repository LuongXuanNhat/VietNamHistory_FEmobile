// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginStateData {
  String? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get showPass => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateDataCopyWith<LoginStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateDataCopyWith<$Res> {
  factory $LoginStateDataCopyWith(
          LoginStateData value, $Res Function(LoginStateData) then) =
      _$LoginStateDataCopyWithImpl<$Res, LoginStateData>;
  @useResult
  $Res call({String? data, String? error, bool showPass});
}

/// @nodoc
class _$LoginStateDataCopyWithImpl<$Res, $Val extends LoginStateData>
    implements $LoginStateDataCopyWith<$Res> {
  _$LoginStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
    Object? showPass = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      showPass: null == showPass
          ? _value.showPass
          : showPass // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateDataImplCopyWith<$Res>
    implements $LoginStateDataCopyWith<$Res> {
  factory _$$LoginStateDataImplCopyWith(_$LoginStateDataImpl value,
          $Res Function(_$LoginStateDataImpl) then) =
      __$$LoginStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? data, String? error, bool showPass});
}

/// @nodoc
class __$$LoginStateDataImplCopyWithImpl<$Res>
    extends _$LoginStateDataCopyWithImpl<$Res, _$LoginStateDataImpl>
    implements _$$LoginStateDataImplCopyWith<$Res> {
  __$$LoginStateDataImplCopyWithImpl(
      _$LoginStateDataImpl _value, $Res Function(_$LoginStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
    Object? showPass = null,
  }) {
    return _then(_$LoginStateDataImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      showPass: null == showPass
          ? _value.showPass
          : showPass // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginStateDataImpl
    with DiagnosticableTreeMixin
    implements _LoginStateData {
  const _$LoginStateDataImpl({this.data, this.error, this.showPass = true});

  @override
  final String? data;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool showPass;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginStateData(data: $data, error: $error, showPass: $showPass)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginStateData'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('showPass', showPass));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateDataImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.showPass, showPass) ||
                other.showPass == showPass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, error, showPass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateDataImplCopyWith<_$LoginStateDataImpl> get copyWith =>
      __$$LoginStateDataImplCopyWithImpl<_$LoginStateDataImpl>(
          this, _$identity);
}

abstract class _LoginStateData implements LoginStateData {
  const factory _LoginStateData(
      {final String? data,
      final String? error,
      final bool showPass}) = _$LoginStateDataImpl;

  @override
  String? get data;
  @override
  String? get error;
  @override
  bool get showPass;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateDataImplCopyWith<_$LoginStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginCubitState {
  LoginStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginStateData? data) initial,
    required TResult Function(LoginStateData? data) getError,
    required TResult Function(LoginStateData? data) showPass,
    required TResult Function(LoginStateData? data) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginStateData? data)? initial,
    TResult? Function(LoginStateData? data)? getError,
    TResult? Function(LoginStateData? data)? showPass,
    TResult? Function(LoginStateData? data)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStateData? data)? initial,
    TResult Function(LoginStateData? data)? getError,
    TResult Function(LoginStateData? data)? showPass,
    TResult Function(LoginStateData? data)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(ShowPass value) showPass,
    required TResult Function(GetData value) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(ShowPass value)? showPass,
    TResult? Function(GetData value)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(ShowPass value)? showPass,
    TResult Function(GetData value)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginCubitStateCopyWith<LoginCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCubitStateCopyWith<$Res> {
  factory $LoginCubitStateCopyWith(
          LoginCubitState value, $Res Function(LoginCubitState) then) =
      _$LoginCubitStateCopyWithImpl<$Res, LoginCubitState>;
  @useResult
  $Res call({LoginStateData? data});

  $LoginStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginCubitStateCopyWithImpl<$Res, $Val extends LoginCubitState>
    implements $LoginCubitStateCopyWith<$Res> {
  _$LoginCubitStateCopyWithImpl(this._value, this._then);

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
              as LoginStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LoginStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $LoginCubitStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginStateData? data});

  @override
  $LoginStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginCubitStateCopyWithImpl<$Res, _$InitialImpl>
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
              as LoginStateData?,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements Initial {
  const _$InitialImpl({this.data});

  @override
  final LoginStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginCubitState.initial(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginCubitState.initial'))
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
    required TResult Function(LoginStateData? data) initial,
    required TResult Function(LoginStateData? data) getError,
    required TResult Function(LoginStateData? data) showPass,
    required TResult Function(LoginStateData? data) getData,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginStateData? data)? initial,
    TResult? Function(LoginStateData? data)? getError,
    TResult? Function(LoginStateData? data)? showPass,
    TResult? Function(LoginStateData? data)? getData,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStateData? data)? initial,
    TResult Function(LoginStateData? data)? getError,
    TResult Function(LoginStateData? data)? showPass,
    TResult Function(LoginStateData? data)? getData,
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
    required TResult Function(GetData value) getData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(ShowPass value)? showPass,
    TResult? Function(GetData value)? getData,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(ShowPass value)? showPass,
    TResult Function(GetData value)? getData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LoginCubitState {
  const factory Initial({final LoginStateData? data}) = _$InitialImpl;

  @override
  LoginStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $LoginCubitStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginStateData? data});

  @override
  $LoginStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$LoginCubitStateCopyWithImpl<$Res, _$GetErrorImpl>
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
              as LoginStateData?,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl with DiagnosticableTreeMixin implements GetError {
  const _$GetErrorImpl({this.data});

  @override
  final LoginStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginCubitState.getError(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginCubitState.getError'))
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
    required TResult Function(LoginStateData? data) initial,
    required TResult Function(LoginStateData? data) getError,
    required TResult Function(LoginStateData? data) showPass,
    required TResult Function(LoginStateData? data) getData,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginStateData? data)? initial,
    TResult? Function(LoginStateData? data)? getError,
    TResult? Function(LoginStateData? data)? showPass,
    TResult? Function(LoginStateData? data)? getData,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStateData? data)? initial,
    TResult Function(LoginStateData? data)? getError,
    TResult Function(LoginStateData? data)? showPass,
    TResult Function(LoginStateData? data)? getData,
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
    required TResult Function(GetData value) getData,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(ShowPass value)? showPass,
    TResult? Function(GetData value)? getData,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(ShowPass value)? showPass,
    TResult Function(GetData value)? getData,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements LoginCubitState {
  const factory GetError({final LoginStateData? data}) = _$GetErrorImpl;

  @override
  LoginStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowPassImplCopyWith<$Res>
    implements $LoginCubitStateCopyWith<$Res> {
  factory _$$ShowPassImplCopyWith(
          _$ShowPassImpl value, $Res Function(_$ShowPassImpl) then) =
      __$$ShowPassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginStateData? data});

  @override
  $LoginStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ShowPassImplCopyWithImpl<$Res>
    extends _$LoginCubitStateCopyWithImpl<$Res, _$ShowPassImpl>
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
              as LoginStateData?,
    ));
  }
}

/// @nodoc

class _$ShowPassImpl with DiagnosticableTreeMixin implements ShowPass {
  const _$ShowPassImpl({this.data});

  @override
  final LoginStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginCubitState.showPass(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginCubitState.showPass'))
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
    required TResult Function(LoginStateData? data) initial,
    required TResult Function(LoginStateData? data) getError,
    required TResult Function(LoginStateData? data) showPass,
    required TResult Function(LoginStateData? data) getData,
  }) {
    return showPass(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginStateData? data)? initial,
    TResult? Function(LoginStateData? data)? getError,
    TResult? Function(LoginStateData? data)? showPass,
    TResult? Function(LoginStateData? data)? getData,
  }) {
    return showPass?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStateData? data)? initial,
    TResult Function(LoginStateData? data)? getError,
    TResult Function(LoginStateData? data)? showPass,
    TResult Function(LoginStateData? data)? getData,
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
    required TResult Function(GetData value) getData,
  }) {
    return showPass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(ShowPass value)? showPass,
    TResult? Function(GetData value)? getData,
  }) {
    return showPass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(ShowPass value)? showPass,
    TResult Function(GetData value)? getData,
    required TResult orElse(),
  }) {
    if (showPass != null) {
      return showPass(this);
    }
    return orElse();
  }
}

abstract class ShowPass implements LoginCubitState {
  const factory ShowPass({final LoginStateData? data}) = _$ShowPassImpl;

  @override
  LoginStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ShowPassImplCopyWith<_$ShowPassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDataImplCopyWith<$Res>
    implements $LoginCubitStateCopyWith<$Res> {
  factory _$$GetDataImplCopyWith(
          _$GetDataImpl value, $Res Function(_$GetDataImpl) then) =
      __$$GetDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginStateData? data});

  @override
  $LoginStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetDataImplCopyWithImpl<$Res>
    extends _$LoginCubitStateCopyWithImpl<$Res, _$GetDataImpl>
    implements _$$GetDataImplCopyWith<$Res> {
  __$$GetDataImplCopyWithImpl(
      _$GetDataImpl _value, $Res Function(_$GetDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetDataImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginStateData?,
    ));
  }
}

/// @nodoc

class _$GetDataImpl with DiagnosticableTreeMixin implements GetData {
  const _$GetDataImpl({this.data});

  @override
  final LoginStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginCubitState.getData(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginCubitState.getData'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataImplCopyWith<_$GetDataImpl> get copyWith =>
      __$$GetDataImplCopyWithImpl<_$GetDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginStateData? data) initial,
    required TResult Function(LoginStateData? data) getError,
    required TResult Function(LoginStateData? data) showPass,
    required TResult Function(LoginStateData? data) getData,
  }) {
    return getData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginStateData? data)? initial,
    TResult? Function(LoginStateData? data)? getError,
    TResult? Function(LoginStateData? data)? showPass,
    TResult? Function(LoginStateData? data)? getData,
  }) {
    return getData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStateData? data)? initial,
    TResult Function(LoginStateData? data)? getError,
    TResult Function(LoginStateData? data)? showPass,
    TResult Function(LoginStateData? data)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(ShowPass value) showPass,
    required TResult Function(GetData value) getData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(ShowPass value)? showPass,
    TResult? Function(GetData value)? getData,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(ShowPass value)? showPass,
    TResult Function(GetData value)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetData implements LoginCubitState {
  const factory GetData({final LoginStateData? data}) = _$GetDataImpl;

  @override
  LoginStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetDataImplCopyWith<_$GetDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
