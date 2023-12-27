// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscoverStateData {
  String? get error => throw _privateConstructorUsedError;
  int get success => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  List<String>? get listTag => throw _privateConstructorUsedError;
  ListDiscoverResponse? get listDiscover => throw _privateConstructorUsedError;
  ListDiscoverResponse? get listDiscoverOriginal =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverStateDataCopyWith<DiscoverStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverStateDataCopyWith<$Res> {
  factory $DiscoverStateDataCopyWith(
          DiscoverStateData value, $Res Function(DiscoverStateData) then) =
      _$DiscoverStateDataCopyWithImpl<$Res, DiscoverStateData>;
  @useResult
  $Res call(
      {String? error,
      int success,
      StatusType status,
      List<String>? listTag,
      ListDiscoverResponse? listDiscover,
      ListDiscoverResponse? listDiscoverOriginal});
}

/// @nodoc
class _$DiscoverStateDataCopyWithImpl<$Res, $Val extends DiscoverStateData>
    implements $DiscoverStateDataCopyWith<$Res> {
  _$DiscoverStateDataCopyWithImpl(this._value, this._then);

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
    Object? listTag = freezed,
    Object? listDiscover = freezed,
    Object? listDiscoverOriginal = freezed,
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
      listTag: freezed == listTag
          ? _value.listTag
          : listTag // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      listDiscover: freezed == listDiscover
          ? _value.listDiscover
          : listDiscover // ignore: cast_nullable_to_non_nullable
              as ListDiscoverResponse?,
      listDiscoverOriginal: freezed == listDiscoverOriginal
          ? _value.listDiscoverOriginal
          : listDiscoverOriginal // ignore: cast_nullable_to_non_nullable
              as ListDiscoverResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscoverStateDataImplCopyWith<$Res>
    implements $DiscoverStateDataCopyWith<$Res> {
  factory _$$DiscoverStateDataImplCopyWith(_$DiscoverStateDataImpl value,
          $Res Function(_$DiscoverStateDataImpl) then) =
      __$$DiscoverStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? error,
      int success,
      StatusType status,
      List<String>? listTag,
      ListDiscoverResponse? listDiscover,
      ListDiscoverResponse? listDiscoverOriginal});
}

/// @nodoc
class __$$DiscoverStateDataImplCopyWithImpl<$Res>
    extends _$DiscoverStateDataCopyWithImpl<$Res, _$DiscoverStateDataImpl>
    implements _$$DiscoverStateDataImplCopyWith<$Res> {
  __$$DiscoverStateDataImplCopyWithImpl(_$DiscoverStateDataImpl _value,
      $Res Function(_$DiscoverStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? success = null,
    Object? status = null,
    Object? listTag = freezed,
    Object? listDiscover = freezed,
    Object? listDiscoverOriginal = freezed,
  }) {
    return _then(_$DiscoverStateDataImpl(
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
      listTag: freezed == listTag
          ? _value._listTag
          : listTag // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      listDiscover: freezed == listDiscover
          ? _value.listDiscover
          : listDiscover // ignore: cast_nullable_to_non_nullable
              as ListDiscoverResponse?,
      listDiscoverOriginal: freezed == listDiscoverOriginal
          ? _value.listDiscoverOriginal
          : listDiscoverOriginal // ignore: cast_nullable_to_non_nullable
              as ListDiscoverResponse?,
    ));
  }
}

/// @nodoc

class _$DiscoverStateDataImpl implements _DiscoverStateData {
  _$DiscoverStateDataImpl(
      {this.error,
      this.success = 0,
      this.status = StatusType.init,
      final List<String>? listTag = const [],
      this.listDiscover,
      this.listDiscoverOriginal})
      : _listTag = listTag;

  @override
  final String? error;
  @override
  @JsonKey()
  final int success;
  @override
  @JsonKey()
  final StatusType status;
  final List<String>? _listTag;
  @override
  @JsonKey()
  List<String>? get listTag {
    final value = _listTag;
    if (value == null) return null;
    if (_listTag is EqualUnmodifiableListView) return _listTag;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ListDiscoverResponse? listDiscover;
  @override
  final ListDiscoverResponse? listDiscoverOriginal;

  @override
  String toString() {
    return 'DiscoverStateData(error: $error, success: $success, status: $status, listTag: $listTag, listDiscover: $listDiscover, listDiscoverOriginal: $listDiscoverOriginal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._listTag, _listTag) &&
            (identical(other.listDiscover, listDiscover) ||
                other.listDiscover == listDiscover) &&
            (identical(other.listDiscoverOriginal, listDiscoverOriginal) ||
                other.listDiscoverOriginal == listDiscoverOriginal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      error,
      success,
      status,
      const DeepCollectionEquality().hash(_listTag),
      listDiscover,
      listDiscoverOriginal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverStateDataImplCopyWith<_$DiscoverStateDataImpl> get copyWith =>
      __$$DiscoverStateDataImplCopyWithImpl<_$DiscoverStateDataImpl>(
          this, _$identity);
}

abstract class _DiscoverStateData implements DiscoverStateData {
  factory _DiscoverStateData(
          {final String? error,
          final int success,
          final StatusType status,
          final List<String>? listTag,
          final ListDiscoverResponse? listDiscover,
          final ListDiscoverResponse? listDiscoverOriginal}) =
      _$DiscoverStateDataImpl;

  @override
  String? get error;
  @override
  int get success;
  @override
  StatusType get status;
  @override
  List<String>? get listTag;
  @override
  ListDiscoverResponse? get listDiscover;
  @override
  ListDiscoverResponse? get listDiscoverOriginal;
  @override
  @JsonKey(ignore: true)
  _$$DiscoverStateDataImplCopyWith<_$DiscoverStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DiscoverState {
  DiscoverStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DiscoverStateData? data) initial,
    required TResult Function(DiscoverStateData? data) getError,
    required TResult Function(DiscoverStateData? data) status,
    required TResult Function(DiscoverStateData? data) getListDiscover,
    required TResult Function(DiscoverStateData? data) getListTag,
    required TResult Function(DiscoverStateData? data) searchPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DiscoverStateData? data)? initial,
    TResult? Function(DiscoverStateData? data)? getError,
    TResult? Function(DiscoverStateData? data)? status,
    TResult? Function(DiscoverStateData? data)? getListDiscover,
    TResult? Function(DiscoverStateData? data)? getListTag,
    TResult? Function(DiscoverStateData? data)? searchPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DiscoverStateData? data)? initial,
    TResult Function(DiscoverStateData? data)? getError,
    TResult Function(DiscoverStateData? data)? status,
    TResult Function(DiscoverStateData? data)? getListDiscover,
    TResult Function(DiscoverStateData? data)? getListTag,
    TResult Function(DiscoverStateData? data)? searchPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Status value) status,
    required TResult Function(GetListDiscover value) getListDiscover,
    required TResult Function(GetListTag value) getListTag,
    required TResult Function(SearchPost value) searchPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Status value)? status,
    TResult? Function(GetListDiscover value)? getListDiscover,
    TResult? Function(GetListTag value)? getListTag,
    TResult? Function(SearchPost value)? searchPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Status value)? status,
    TResult Function(GetListDiscover value)? getListDiscover,
    TResult Function(GetListTag value)? getListTag,
    TResult Function(SearchPost value)? searchPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverStateCopyWith<DiscoverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverStateCopyWith<$Res> {
  factory $DiscoverStateCopyWith(
          DiscoverState value, $Res Function(DiscoverState) then) =
      _$DiscoverStateCopyWithImpl<$Res, DiscoverState>;
  @useResult
  $Res call({DiscoverStateData? data});

  $DiscoverStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DiscoverStateCopyWithImpl<$Res, $Val extends DiscoverState>
    implements $DiscoverStateCopyWith<$Res> {
  _$DiscoverStateCopyWithImpl(this._value, this._then);

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
              as DiscoverStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DiscoverStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DiscoverStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DiscoverStateData? data});

  @override
  $DiscoverStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$InitialImpl>
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
              as DiscoverStateData?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({this.data});

  @override
  final DiscoverStateData? data;

  @override
  String toString() {
    return 'DiscoverState.initial(data: $data)';
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
    required TResult Function(DiscoverStateData? data) initial,
    required TResult Function(DiscoverStateData? data) getError,
    required TResult Function(DiscoverStateData? data) status,
    required TResult Function(DiscoverStateData? data) getListDiscover,
    required TResult Function(DiscoverStateData? data) getListTag,
    required TResult Function(DiscoverStateData? data) searchPost,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DiscoverStateData? data)? initial,
    TResult? Function(DiscoverStateData? data)? getError,
    TResult? Function(DiscoverStateData? data)? status,
    TResult? Function(DiscoverStateData? data)? getListDiscover,
    TResult? Function(DiscoverStateData? data)? getListTag,
    TResult? Function(DiscoverStateData? data)? searchPost,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DiscoverStateData? data)? initial,
    TResult Function(DiscoverStateData? data)? getError,
    TResult Function(DiscoverStateData? data)? status,
    TResult Function(DiscoverStateData? data)? getListDiscover,
    TResult Function(DiscoverStateData? data)? getListTag,
    TResult Function(DiscoverStateData? data)? searchPost,
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
    required TResult Function(Status value) status,
    required TResult Function(GetListDiscover value) getListDiscover,
    required TResult Function(GetListTag value) getListTag,
    required TResult Function(SearchPost value) searchPost,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Status value)? status,
    TResult? Function(GetListDiscover value)? getListDiscover,
    TResult? Function(GetListTag value)? getListTag,
    TResult? Function(SearchPost value)? searchPost,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Status value)? status,
    TResult Function(GetListDiscover value)? getListDiscover,
    TResult Function(GetListTag value)? getListTag,
    TResult Function(SearchPost value)? searchPost,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DiscoverState {
  const factory Initial({final DiscoverStateData? data}) = _$InitialImpl;

  @override
  DiscoverStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DiscoverStateData? data});

  @override
  $DiscoverStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$GetErrorImpl>
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
              as DiscoverStateData?,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl implements GetError {
  const _$GetErrorImpl({this.data});

  @override
  final DiscoverStateData? data;

  @override
  String toString() {
    return 'DiscoverState.getError(data: $data)';
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
    required TResult Function(DiscoverStateData? data) initial,
    required TResult Function(DiscoverStateData? data) getError,
    required TResult Function(DiscoverStateData? data) status,
    required TResult Function(DiscoverStateData? data) getListDiscover,
    required TResult Function(DiscoverStateData? data) getListTag,
    required TResult Function(DiscoverStateData? data) searchPost,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DiscoverStateData? data)? initial,
    TResult? Function(DiscoverStateData? data)? getError,
    TResult? Function(DiscoverStateData? data)? status,
    TResult? Function(DiscoverStateData? data)? getListDiscover,
    TResult? Function(DiscoverStateData? data)? getListTag,
    TResult? Function(DiscoverStateData? data)? searchPost,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DiscoverStateData? data)? initial,
    TResult Function(DiscoverStateData? data)? getError,
    TResult Function(DiscoverStateData? data)? status,
    TResult Function(DiscoverStateData? data)? getListDiscover,
    TResult Function(DiscoverStateData? data)? getListTag,
    TResult Function(DiscoverStateData? data)? searchPost,
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
    required TResult Function(Status value) status,
    required TResult Function(GetListDiscover value) getListDiscover,
    required TResult Function(GetListTag value) getListTag,
    required TResult Function(SearchPost value) searchPost,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Status value)? status,
    TResult? Function(GetListDiscover value)? getListDiscover,
    TResult? Function(GetListTag value)? getListTag,
    TResult? Function(SearchPost value)? searchPost,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Status value)? status,
    TResult Function(GetListDiscover value)? getListDiscover,
    TResult Function(GetListTag value)? getListTag,
    TResult Function(SearchPost value)? searchPost,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements DiscoverState {
  const factory GetError({final DiscoverStateData? data}) = _$GetErrorImpl;

  @override
  DiscoverStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusImplCopyWith<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  factory _$$StatusImplCopyWith(
          _$StatusImpl value, $Res Function(_$StatusImpl) then) =
      __$$StatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DiscoverStateData? data});

  @override
  $DiscoverStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusImplCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$StatusImpl>
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
              as DiscoverStateData?,
    ));
  }
}

/// @nodoc

class _$StatusImpl implements Status {
  const _$StatusImpl({this.data});

  @override
  final DiscoverStateData? data;

  @override
  String toString() {
    return 'DiscoverState.status(data: $data)';
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
    required TResult Function(DiscoverStateData? data) initial,
    required TResult Function(DiscoverStateData? data) getError,
    required TResult Function(DiscoverStateData? data) status,
    required TResult Function(DiscoverStateData? data) getListDiscover,
    required TResult Function(DiscoverStateData? data) getListTag,
    required TResult Function(DiscoverStateData? data) searchPost,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DiscoverStateData? data)? initial,
    TResult? Function(DiscoverStateData? data)? getError,
    TResult? Function(DiscoverStateData? data)? status,
    TResult? Function(DiscoverStateData? data)? getListDiscover,
    TResult? Function(DiscoverStateData? data)? getListTag,
    TResult? Function(DiscoverStateData? data)? searchPost,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DiscoverStateData? data)? initial,
    TResult Function(DiscoverStateData? data)? getError,
    TResult Function(DiscoverStateData? data)? status,
    TResult Function(DiscoverStateData? data)? getListDiscover,
    TResult Function(DiscoverStateData? data)? getListTag,
    TResult Function(DiscoverStateData? data)? searchPost,
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
    required TResult Function(Status value) status,
    required TResult Function(GetListDiscover value) getListDiscover,
    required TResult Function(GetListTag value) getListTag,
    required TResult Function(SearchPost value) searchPost,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Status value)? status,
    TResult? Function(GetListDiscover value)? getListDiscover,
    TResult? Function(GetListTag value)? getListTag,
    TResult? Function(SearchPost value)? searchPost,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Status value)? status,
    TResult Function(GetListDiscover value)? getListDiscover,
    TResult Function(GetListTag value)? getListTag,
    TResult Function(SearchPost value)? searchPost,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements DiscoverState {
  const factory Status({final DiscoverStateData? data}) = _$StatusImpl;

  @override
  DiscoverStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetListDiscoverImplCopyWith<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  factory _$$GetListDiscoverImplCopyWith(_$GetListDiscoverImpl value,
          $Res Function(_$GetListDiscoverImpl) then) =
      __$$GetListDiscoverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DiscoverStateData? data});

  @override
  $DiscoverStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetListDiscoverImplCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$GetListDiscoverImpl>
    implements _$$GetListDiscoverImplCopyWith<$Res> {
  __$$GetListDiscoverImplCopyWithImpl(
      _$GetListDiscoverImpl _value, $Res Function(_$GetListDiscoverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetListDiscoverImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DiscoverStateData?,
    ));
  }
}

/// @nodoc

class _$GetListDiscoverImpl implements GetListDiscover {
  const _$GetListDiscoverImpl({this.data});

  @override
  final DiscoverStateData? data;

  @override
  String toString() {
    return 'DiscoverState.getListDiscover(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListDiscoverImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListDiscoverImplCopyWith<_$GetListDiscoverImpl> get copyWith =>
      __$$GetListDiscoverImplCopyWithImpl<_$GetListDiscoverImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DiscoverStateData? data) initial,
    required TResult Function(DiscoverStateData? data) getError,
    required TResult Function(DiscoverStateData? data) status,
    required TResult Function(DiscoverStateData? data) getListDiscover,
    required TResult Function(DiscoverStateData? data) getListTag,
    required TResult Function(DiscoverStateData? data) searchPost,
  }) {
    return getListDiscover(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DiscoverStateData? data)? initial,
    TResult? Function(DiscoverStateData? data)? getError,
    TResult? Function(DiscoverStateData? data)? status,
    TResult? Function(DiscoverStateData? data)? getListDiscover,
    TResult? Function(DiscoverStateData? data)? getListTag,
    TResult? Function(DiscoverStateData? data)? searchPost,
  }) {
    return getListDiscover?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DiscoverStateData? data)? initial,
    TResult Function(DiscoverStateData? data)? getError,
    TResult Function(DiscoverStateData? data)? status,
    TResult Function(DiscoverStateData? data)? getListDiscover,
    TResult Function(DiscoverStateData? data)? getListTag,
    TResult Function(DiscoverStateData? data)? searchPost,
    required TResult orElse(),
  }) {
    if (getListDiscover != null) {
      return getListDiscover(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Status value) status,
    required TResult Function(GetListDiscover value) getListDiscover,
    required TResult Function(GetListTag value) getListTag,
    required TResult Function(SearchPost value) searchPost,
  }) {
    return getListDiscover(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Status value)? status,
    TResult? Function(GetListDiscover value)? getListDiscover,
    TResult? Function(GetListTag value)? getListTag,
    TResult? Function(SearchPost value)? searchPost,
  }) {
    return getListDiscover?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Status value)? status,
    TResult Function(GetListDiscover value)? getListDiscover,
    TResult Function(GetListTag value)? getListTag,
    TResult Function(SearchPost value)? searchPost,
    required TResult orElse(),
  }) {
    if (getListDiscover != null) {
      return getListDiscover(this);
    }
    return orElse();
  }
}

abstract class GetListDiscover implements DiscoverState {
  const factory GetListDiscover({final DiscoverStateData? data}) =
      _$GetListDiscoverImpl;

  @override
  DiscoverStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetListDiscoverImplCopyWith<_$GetListDiscoverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetListTagImplCopyWith<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  factory _$$GetListTagImplCopyWith(
          _$GetListTagImpl value, $Res Function(_$GetListTagImpl) then) =
      __$$GetListTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DiscoverStateData? data});

  @override
  $DiscoverStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetListTagImplCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$GetListTagImpl>
    implements _$$GetListTagImplCopyWith<$Res> {
  __$$GetListTagImplCopyWithImpl(
      _$GetListTagImpl _value, $Res Function(_$GetListTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetListTagImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DiscoverStateData?,
    ));
  }
}

/// @nodoc

class _$GetListTagImpl implements GetListTag {
  const _$GetListTagImpl({this.data});

  @override
  final DiscoverStateData? data;

  @override
  String toString() {
    return 'DiscoverState.getListTag(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListTagImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListTagImplCopyWith<_$GetListTagImpl> get copyWith =>
      __$$GetListTagImplCopyWithImpl<_$GetListTagImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DiscoverStateData? data) initial,
    required TResult Function(DiscoverStateData? data) getError,
    required TResult Function(DiscoverStateData? data) status,
    required TResult Function(DiscoverStateData? data) getListDiscover,
    required TResult Function(DiscoverStateData? data) getListTag,
    required TResult Function(DiscoverStateData? data) searchPost,
  }) {
    return getListTag(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DiscoverStateData? data)? initial,
    TResult? Function(DiscoverStateData? data)? getError,
    TResult? Function(DiscoverStateData? data)? status,
    TResult? Function(DiscoverStateData? data)? getListDiscover,
    TResult? Function(DiscoverStateData? data)? getListTag,
    TResult? Function(DiscoverStateData? data)? searchPost,
  }) {
    return getListTag?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DiscoverStateData? data)? initial,
    TResult Function(DiscoverStateData? data)? getError,
    TResult Function(DiscoverStateData? data)? status,
    TResult Function(DiscoverStateData? data)? getListDiscover,
    TResult Function(DiscoverStateData? data)? getListTag,
    TResult Function(DiscoverStateData? data)? searchPost,
    required TResult orElse(),
  }) {
    if (getListTag != null) {
      return getListTag(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Status value) status,
    required TResult Function(GetListDiscover value) getListDiscover,
    required TResult Function(GetListTag value) getListTag,
    required TResult Function(SearchPost value) searchPost,
  }) {
    return getListTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Status value)? status,
    TResult? Function(GetListDiscover value)? getListDiscover,
    TResult? Function(GetListTag value)? getListTag,
    TResult? Function(SearchPost value)? searchPost,
  }) {
    return getListTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Status value)? status,
    TResult Function(GetListDiscover value)? getListDiscover,
    TResult Function(GetListTag value)? getListTag,
    TResult Function(SearchPost value)? searchPost,
    required TResult orElse(),
  }) {
    if (getListTag != null) {
      return getListTag(this);
    }
    return orElse();
  }
}

abstract class GetListTag implements DiscoverState {
  const factory GetListTag({final DiscoverStateData? data}) = _$GetListTagImpl;

  @override
  DiscoverStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetListTagImplCopyWith<_$GetListTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchPostImplCopyWith<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  factory _$$SearchPostImplCopyWith(
          _$SearchPostImpl value, $Res Function(_$SearchPostImpl) then) =
      __$$SearchPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DiscoverStateData? data});

  @override
  $DiscoverStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SearchPostImplCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$SearchPostImpl>
    implements _$$SearchPostImplCopyWith<$Res> {
  __$$SearchPostImplCopyWithImpl(
      _$SearchPostImpl _value, $Res Function(_$SearchPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SearchPostImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DiscoverStateData?,
    ));
  }
}

/// @nodoc

class _$SearchPostImpl implements SearchPost {
  const _$SearchPostImpl({this.data});

  @override
  final DiscoverStateData? data;

  @override
  String toString() {
    return 'DiscoverState.searchPost(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPostImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPostImplCopyWith<_$SearchPostImpl> get copyWith =>
      __$$SearchPostImplCopyWithImpl<_$SearchPostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DiscoverStateData? data) initial,
    required TResult Function(DiscoverStateData? data) getError,
    required TResult Function(DiscoverStateData? data) status,
    required TResult Function(DiscoverStateData? data) getListDiscover,
    required TResult Function(DiscoverStateData? data) getListTag,
    required TResult Function(DiscoverStateData? data) searchPost,
  }) {
    return searchPost(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DiscoverStateData? data)? initial,
    TResult? Function(DiscoverStateData? data)? getError,
    TResult? Function(DiscoverStateData? data)? status,
    TResult? Function(DiscoverStateData? data)? getListDiscover,
    TResult? Function(DiscoverStateData? data)? getListTag,
    TResult? Function(DiscoverStateData? data)? searchPost,
  }) {
    return searchPost?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DiscoverStateData? data)? initial,
    TResult Function(DiscoverStateData? data)? getError,
    TResult Function(DiscoverStateData? data)? status,
    TResult Function(DiscoverStateData? data)? getListDiscover,
    TResult Function(DiscoverStateData? data)? getListTag,
    TResult Function(DiscoverStateData? data)? searchPost,
    required TResult orElse(),
  }) {
    if (searchPost != null) {
      return searchPost(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(Status value) status,
    required TResult Function(GetListDiscover value) getListDiscover,
    required TResult Function(GetListTag value) getListTag,
    required TResult Function(SearchPost value) searchPost,
  }) {
    return searchPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(Status value)? status,
    TResult? Function(GetListDiscover value)? getListDiscover,
    TResult? Function(GetListTag value)? getListTag,
    TResult? Function(SearchPost value)? searchPost,
  }) {
    return searchPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(Status value)? status,
    TResult Function(GetListDiscover value)? getListDiscover,
    TResult Function(GetListTag value)? getListTag,
    TResult Function(SearchPost value)? searchPost,
    required TResult orElse(),
  }) {
    if (searchPost != null) {
      return searchPost(this);
    }
    return orElse();
  }
}

abstract class SearchPost implements DiscoverState {
  const factory SearchPost({final DiscoverStateData? data}) = _$SearchPostImpl;

  @override
  DiscoverStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchPostImplCopyWith<_$SearchPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
