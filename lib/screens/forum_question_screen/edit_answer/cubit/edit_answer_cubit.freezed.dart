// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_answer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditAnswerStateData {
  String get error => throw _privateConstructorUsedError;
  ListAnswerResponse? get listAnswerResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditAnswerStateDataCopyWith<EditAnswerStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditAnswerStateDataCopyWith<$Res> {
  factory $EditAnswerStateDataCopyWith(
          EditAnswerStateData value, $Res Function(EditAnswerStateData) then) =
      _$EditAnswerStateDataCopyWithImpl<$Res, EditAnswerStateData>;
  @useResult
  $Res call({String error, ListAnswerResponse? listAnswerResponse});
}

/// @nodoc
class _$EditAnswerStateDataCopyWithImpl<$Res, $Val extends EditAnswerStateData>
    implements $EditAnswerStateDataCopyWith<$Res> {
  _$EditAnswerStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? listAnswerResponse = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      listAnswerResponse: freezed == listAnswerResponse
          ? _value.listAnswerResponse
          : listAnswerResponse // ignore: cast_nullable_to_non_nullable
              as ListAnswerResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditAnswerStateDataImplCopyWith<$Res>
    implements $EditAnswerStateDataCopyWith<$Res> {
  factory _$$EditAnswerStateDataImplCopyWith(_$EditAnswerStateDataImpl value,
          $Res Function(_$EditAnswerStateDataImpl) then) =
      __$$EditAnswerStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, ListAnswerResponse? listAnswerResponse});
}

/// @nodoc
class __$$EditAnswerStateDataImplCopyWithImpl<$Res>
    extends _$EditAnswerStateDataCopyWithImpl<$Res, _$EditAnswerStateDataImpl>
    implements _$$EditAnswerStateDataImplCopyWith<$Res> {
  __$$EditAnswerStateDataImplCopyWithImpl(_$EditAnswerStateDataImpl _value,
      $Res Function(_$EditAnswerStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? listAnswerResponse = freezed,
  }) {
    return _then(_$EditAnswerStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      listAnswerResponse: freezed == listAnswerResponse
          ? _value.listAnswerResponse
          : listAnswerResponse // ignore: cast_nullable_to_non_nullable
              as ListAnswerResponse?,
    ));
  }
}

/// @nodoc

class _$EditAnswerStateDataImpl implements _EditAnswerStateData {
  const _$EditAnswerStateDataImpl({this.error = '', this.listAnswerResponse});

  @override
  @JsonKey()
  final String error;
  @override
  final ListAnswerResponse? listAnswerResponse;

  @override
  String toString() {
    return 'EditAnswerStateData(error: $error, listAnswerResponse: $listAnswerResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditAnswerStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.listAnswerResponse, listAnswerResponse) ||
                other.listAnswerResponse == listAnswerResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, listAnswerResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditAnswerStateDataImplCopyWith<_$EditAnswerStateDataImpl> get copyWith =>
      __$$EditAnswerStateDataImplCopyWithImpl<_$EditAnswerStateDataImpl>(
          this, _$identity);
}

abstract class _EditAnswerStateData implements EditAnswerStateData {
  const factory _EditAnswerStateData(
          {final String error, final ListAnswerResponse? listAnswerResponse}) =
      _$EditAnswerStateDataImpl;

  @override
  String get error;
  @override
  ListAnswerResponse? get listAnswerResponse;
  @override
  @JsonKey(ignore: true)
  _$$EditAnswerStateDataImplCopyWith<_$EditAnswerStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditAnswerState {
  EditAnswerStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditAnswerStateData data) initial,
    required TResult Function(EditAnswerStateData data) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditAnswerStateData data)? initial,
    TResult? Function(EditAnswerStateData data)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditAnswerStateData data)? initial,
    TResult Function(EditAnswerStateData data)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditAnswerStateCopyWith<EditAnswerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditAnswerStateCopyWith<$Res> {
  factory $EditAnswerStateCopyWith(
          EditAnswerState value, $Res Function(EditAnswerState) then) =
      _$EditAnswerStateCopyWithImpl<$Res, EditAnswerState>;
  @useResult
  $Res call({EditAnswerStateData data});

  $EditAnswerStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$EditAnswerStateCopyWithImpl<$Res, $Val extends EditAnswerState>
    implements $EditAnswerStateCopyWith<$Res> {
  _$EditAnswerStateCopyWithImpl(this._value, this._then);

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
              as EditAnswerStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EditAnswerStateDataCopyWith<$Res> get data {
    return $EditAnswerStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $EditAnswerStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditAnswerStateData data});

  @override
  $EditAnswerStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EditAnswerStateCopyWithImpl<$Res, _$InitialImpl>
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
              as EditAnswerStateData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({required this.data});

  @override
  final EditAnswerStateData data;

  @override
  String toString() {
    return 'EditAnswerState.initial(data: $data)';
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
    required TResult Function(EditAnswerStateData data) initial,
    required TResult Function(EditAnswerStateData data) loaded,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditAnswerStateData data)? initial,
    TResult? Function(EditAnswerStateData data)? loaded,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditAnswerStateData data)? initial,
    TResult Function(EditAnswerStateData data)? loaded,
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
    required TResult Function(Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements EditAnswerState {
  const factory Initial({required final EditAnswerStateData data}) =
      _$InitialImpl;

  @override
  EditAnswerStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $EditAnswerStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditAnswerStateData data});

  @override
  $EditAnswerStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$EditAnswerStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EditAnswerStateData,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl({required this.data});

  @override
  final EditAnswerStateData data;

  @override
  String toString() {
    return 'EditAnswerState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditAnswerStateData data) initial,
    required TResult Function(EditAnswerStateData data) loaded,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditAnswerStateData data)? initial,
    TResult? Function(EditAnswerStateData data)? loaded,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditAnswerStateData data)? initial,
    TResult Function(EditAnswerStateData data)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements EditAnswerState {
  const factory Loaded({required final EditAnswerStateData data}) =
      _$LoadedImpl;

  @override
  EditAnswerStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
