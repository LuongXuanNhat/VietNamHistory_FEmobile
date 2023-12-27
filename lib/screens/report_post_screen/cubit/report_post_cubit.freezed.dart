// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_post_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReportPostStateData {
  String? get error => throw _privateConstructorUsedError;
  int get success => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  SuccesResponse? get data => throw _privateConstructorUsedError;
  ListReport? get listReport => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportPostStateDataCopyWith<ReportPostStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportPostStateDataCopyWith<$Res> {
  factory $ReportPostStateDataCopyWith(
          ReportPostStateData value, $Res Function(ReportPostStateData) then) =
      _$ReportPostStateDataCopyWithImpl<$Res, ReportPostStateData>;
  @useResult
  $Res call(
      {String? error,
      int success,
      StatusType status,
      SuccesResponse? data,
      ListReport? listReport});
}

/// @nodoc
class _$ReportPostStateDataCopyWithImpl<$Res, $Val extends ReportPostStateData>
    implements $ReportPostStateDataCopyWith<$Res> {
  _$ReportPostStateDataCopyWithImpl(this._value, this._then);

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
    Object? data = freezed,
    Object? listReport = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SuccesResponse?,
      listReport: freezed == listReport
          ? _value.listReport
          : listReport // ignore: cast_nullable_to_non_nullable
              as ListReport?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportPostStateDataImplCopyWith<$Res>
    implements $ReportPostStateDataCopyWith<$Res> {
  factory _$$ReportPostStateDataImplCopyWith(_$ReportPostStateDataImpl value,
          $Res Function(_$ReportPostStateDataImpl) then) =
      __$$ReportPostStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? error,
      int success,
      StatusType status,
      SuccesResponse? data,
      ListReport? listReport});
}

/// @nodoc
class __$$ReportPostStateDataImplCopyWithImpl<$Res>
    extends _$ReportPostStateDataCopyWithImpl<$Res, _$ReportPostStateDataImpl>
    implements _$$ReportPostStateDataImplCopyWith<$Res> {
  __$$ReportPostStateDataImplCopyWithImpl(_$ReportPostStateDataImpl _value,
      $Res Function(_$ReportPostStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? success = null,
    Object? status = null,
    Object? data = freezed,
    Object? listReport = freezed,
  }) {
    return _then(_$ReportPostStateDataImpl(
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SuccesResponse?,
      listReport: freezed == listReport
          ? _value.listReport
          : listReport // ignore: cast_nullable_to_non_nullable
              as ListReport?,
    ));
  }
}

/// @nodoc

class _$ReportPostStateDataImpl implements _ReportPostStateData {
  const _$ReportPostStateDataImpl(
      {this.error,
      this.success = 0,
      this.status = StatusType.init,
      this.data,
      this.listReport});

  @override
  final String? error;
  @override
  @JsonKey()
  final int success;
  @override
  @JsonKey()
  final StatusType status;
  @override
  final SuccesResponse? data;
  @override
  final ListReport? listReport;

  @override
  String toString() {
    return 'ReportPostStateData(error: $error, success: $success, status: $status, data: $data, listReport: $listReport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportPostStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.listReport, listReport) ||
                other.listReport == listReport));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, success, status, data, listReport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportPostStateDataImplCopyWith<_$ReportPostStateDataImpl> get copyWith =>
      __$$ReportPostStateDataImplCopyWithImpl<_$ReportPostStateDataImpl>(
          this, _$identity);
}

abstract class _ReportPostStateData implements ReportPostStateData {
  const factory _ReportPostStateData(
      {final String? error,
      final int success,
      final StatusType status,
      final SuccesResponse? data,
      final ListReport? listReport}) = _$ReportPostStateDataImpl;

  @override
  String? get error;
  @override
  int get success;
  @override
  StatusType get status;
  @override
  SuccesResponse? get data;
  @override
  ListReport? get listReport;
  @override
  @JsonKey(ignore: true)
  _$$ReportPostStateDataImplCopyWith<_$ReportPostStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReportPostState {
  ReportPostStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReportPostStateData? data) initial,
    required TResult Function(ReportPostStateData? data) getError,
    required TResult Function(ReportPostStateData? data) success,
    required TResult Function(ReportPostStateData? data) data,
    required TResult Function(ReportPostStateData? data) listReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReportPostStateData? data)? initial,
    TResult? Function(ReportPostStateData? data)? getError,
    TResult? Function(ReportPostStateData? data)? success,
    TResult? Function(ReportPostStateData? data)? data,
    TResult? Function(ReportPostStateData? data)? listReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReportPostStateData? data)? initial,
    TResult Function(ReportPostStateData? data)? getError,
    TResult Function(ReportPostStateData? data)? success,
    TResult Function(ReportPostStateData? data)? data,
    TResult Function(ReportPostStateData? data)? listReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(Data value) data,
    required TResult Function(ListReportState value) listReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(Data value)? data,
    TResult? Function(ListReportState value)? listReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(Data value)? data,
    TResult Function(ListReportState value)? listReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportPostStateCopyWith<ReportPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportPostStateCopyWith<$Res> {
  factory $ReportPostStateCopyWith(
          ReportPostState value, $Res Function(ReportPostState) then) =
      _$ReportPostStateCopyWithImpl<$Res, ReportPostState>;
  @useResult
  $Res call({ReportPostStateData? data});

  $ReportPostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ReportPostStateCopyWithImpl<$Res, $Val extends ReportPostState>
    implements $ReportPostStateCopyWith<$Res> {
  _$ReportPostStateCopyWithImpl(this._value, this._then);

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
              as ReportPostStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReportPostStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ReportPostStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ReportPostStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReportPostStateData? data});

  @override
  $ReportPostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ReportPostStateCopyWithImpl<$Res, _$InitialImpl>
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
              as ReportPostStateData?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({this.data});

  @override
  final ReportPostStateData? data;

  @override
  String toString() {
    return 'ReportPostState.initial(data: $data)';
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
    required TResult Function(ReportPostStateData? data) initial,
    required TResult Function(ReportPostStateData? data) getError,
    required TResult Function(ReportPostStateData? data) success,
    required TResult Function(ReportPostStateData? data) data,
    required TResult Function(ReportPostStateData? data) listReport,
  }) {
    return initial(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReportPostStateData? data)? initial,
    TResult? Function(ReportPostStateData? data)? getError,
    TResult? Function(ReportPostStateData? data)? success,
    TResult? Function(ReportPostStateData? data)? data,
    TResult? Function(ReportPostStateData? data)? listReport,
  }) {
    return initial?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReportPostStateData? data)? initial,
    TResult Function(ReportPostStateData? data)? getError,
    TResult Function(ReportPostStateData? data)? success,
    TResult Function(ReportPostStateData? data)? data,
    TResult Function(ReportPostStateData? data)? listReport,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(Data value) data,
    required TResult Function(ListReportState value) listReport,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(Data value)? data,
    TResult? Function(ListReportState value)? listReport,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(Data value)? data,
    TResult Function(ListReportState value)? listReport,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ReportPostState {
  const factory Initial({final ReportPostStateData? data}) = _$InitialImpl;

  @override
  ReportPostStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $ReportPostStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReportPostStateData? data});

  @override
  $ReportPostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$ReportPostStateCopyWithImpl<$Res, _$GetErrorImpl>
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
              as ReportPostStateData?,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl implements GetError {
  const _$GetErrorImpl({this.data});

  @override
  final ReportPostStateData? data;

  @override
  String toString() {
    return 'ReportPostState.getError(data: $data)';
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
    required TResult Function(ReportPostStateData? data) initial,
    required TResult Function(ReportPostStateData? data) getError,
    required TResult Function(ReportPostStateData? data) success,
    required TResult Function(ReportPostStateData? data) data,
    required TResult Function(ReportPostStateData? data) listReport,
  }) {
    return getError(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReportPostStateData? data)? initial,
    TResult? Function(ReportPostStateData? data)? getError,
    TResult? Function(ReportPostStateData? data)? success,
    TResult? Function(ReportPostStateData? data)? data,
    TResult? Function(ReportPostStateData? data)? listReport,
  }) {
    return getError?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReportPostStateData? data)? initial,
    TResult Function(ReportPostStateData? data)? getError,
    TResult Function(ReportPostStateData? data)? success,
    TResult Function(ReportPostStateData? data)? data,
    TResult Function(ReportPostStateData? data)? listReport,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(Data value) data,
    required TResult Function(ListReportState value) listReport,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(Data value)? data,
    TResult? Function(ListReportState value)? listReport,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(Data value)? data,
    TResult Function(ListReportState value)? listReport,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements ReportPostState {
  const factory GetError({final ReportPostStateData? data}) = _$GetErrorImpl;

  @override
  ReportPostStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $ReportPostStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReportPostStateData? data});

  @override
  $ReportPostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ReportPostStateCopyWithImpl<$Res, _$SuccessImpl>
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
              as ReportPostStateData?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({this.data});

  @override
  final ReportPostStateData? data;

  @override
  String toString() {
    return 'ReportPostState.success(data: $data)';
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
    required TResult Function(ReportPostStateData? data) initial,
    required TResult Function(ReportPostStateData? data) getError,
    required TResult Function(ReportPostStateData? data) success,
    required TResult Function(ReportPostStateData? data) data,
    required TResult Function(ReportPostStateData? data) listReport,
  }) {
    return success(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReportPostStateData? data)? initial,
    TResult? Function(ReportPostStateData? data)? getError,
    TResult? Function(ReportPostStateData? data)? success,
    TResult? Function(ReportPostStateData? data)? data,
    TResult? Function(ReportPostStateData? data)? listReport,
  }) {
    return success?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReportPostStateData? data)? initial,
    TResult Function(ReportPostStateData? data)? getError,
    TResult Function(ReportPostStateData? data)? success,
    TResult Function(ReportPostStateData? data)? data,
    TResult Function(ReportPostStateData? data)? listReport,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(Data value) data,
    required TResult Function(ListReportState value) listReport,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(Data value)? data,
    TResult? Function(ListReportState value)? listReport,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(Data value)? data,
    TResult Function(ListReportState value)? listReport,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements ReportPostState {
  const factory Success({final ReportPostStateData? data}) = _$SuccessImpl;

  @override
  ReportPostStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res>
    implements $ReportPostStateCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReportPostStateData? data});

  @override
  $ReportPostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$ReportPostStateCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DataImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ReportPostStateData?,
    ));
  }
}

/// @nodoc

class _$DataImpl implements Data {
  const _$DataImpl({this.data});

  @override
  final ReportPostStateData? data;

  @override
  String toString() {
    return 'ReportPostState.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReportPostStateData? data) initial,
    required TResult Function(ReportPostStateData? data) getError,
    required TResult Function(ReportPostStateData? data) success,
    required TResult Function(ReportPostStateData? data) data,
    required TResult Function(ReportPostStateData? data) listReport,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReportPostStateData? data)? initial,
    TResult? Function(ReportPostStateData? data)? getError,
    TResult? Function(ReportPostStateData? data)? success,
    TResult? Function(ReportPostStateData? data)? data,
    TResult? Function(ReportPostStateData? data)? listReport,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReportPostStateData? data)? initial,
    TResult Function(ReportPostStateData? data)? getError,
    TResult Function(ReportPostStateData? data)? success,
    TResult Function(ReportPostStateData? data)? data,
    TResult Function(ReportPostStateData? data)? listReport,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(Data value) data,
    required TResult Function(ListReportState value) listReport,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(Data value)? data,
    TResult? Function(ListReportState value)? listReport,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(Data value)? data,
    TResult Function(ListReportState value)? listReport,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Data implements ReportPostState {
  const factory Data({final ReportPostStateData? data}) = _$DataImpl;

  @override
  ReportPostStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListReportStateImplCopyWith<$Res>
    implements $ReportPostStateCopyWith<$Res> {
  factory _$$ListReportStateImplCopyWith(_$ListReportStateImpl value,
          $Res Function(_$ListReportStateImpl) then) =
      __$$ListReportStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReportPostStateData? data});

  @override
  $ReportPostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ListReportStateImplCopyWithImpl<$Res>
    extends _$ReportPostStateCopyWithImpl<$Res, _$ListReportStateImpl>
    implements _$$ListReportStateImplCopyWith<$Res> {
  __$$ListReportStateImplCopyWithImpl(
      _$ListReportStateImpl _value, $Res Function(_$ListReportStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ListReportStateImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ReportPostStateData?,
    ));
  }
}

/// @nodoc

class _$ListReportStateImpl implements ListReportState {
  const _$ListReportStateImpl({this.data});

  @override
  final ReportPostStateData? data;

  @override
  String toString() {
    return 'ReportPostState.listReport(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListReportStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListReportStateImplCopyWith<_$ListReportStateImpl> get copyWith =>
      __$$ListReportStateImplCopyWithImpl<_$ListReportStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReportPostStateData? data) initial,
    required TResult Function(ReportPostStateData? data) getError,
    required TResult Function(ReportPostStateData? data) success,
    required TResult Function(ReportPostStateData? data) data,
    required TResult Function(ReportPostStateData? data) listReport,
  }) {
    return listReport(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReportPostStateData? data)? initial,
    TResult? Function(ReportPostStateData? data)? getError,
    TResult? Function(ReportPostStateData? data)? success,
    TResult? Function(ReportPostStateData? data)? data,
    TResult? Function(ReportPostStateData? data)? listReport,
  }) {
    return listReport?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReportPostStateData? data)? initial,
    TResult Function(ReportPostStateData? data)? getError,
    TResult Function(ReportPostStateData? data)? success,
    TResult Function(ReportPostStateData? data)? data,
    TResult Function(ReportPostStateData? data)? listReport,
    required TResult orElse(),
  }) {
    if (listReport != null) {
      return listReport(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Success value) success,
    required TResult Function(Data value) data,
    required TResult Function(ListReportState value) listReport,
  }) {
    return listReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Success value)? success,
    TResult? Function(Data value)? data,
    TResult? Function(ListReportState value)? listReport,
  }) {
    return listReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Success value)? success,
    TResult Function(Data value)? data,
    TResult Function(ListReportState value)? listReport,
    required TResult orElse(),
  }) {
    if (listReport != null) {
      return listReport(this);
    }
    return orElse();
  }
}

abstract class ListReportState implements ReportPostState {
  const factory ListReportState({final ReportPostStateData? data}) =
      _$ListReportStateImpl;

  @override
  ReportPostStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ListReportStateImplCopyWith<_$ListReportStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
