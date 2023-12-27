// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'savepost_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SavepostStateData {
  String get error => throw _privateConstructorUsedError;
  AddPostResponse? get data => throw _privateConstructorUsedError;
  SuccesResponseBool? get savePost => throw _privateConstructorUsedError;
  bool get isSave => throw _privateConstructorUsedError;
  int get numberSave => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavepostStateDataCopyWith<SavepostStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavepostStateDataCopyWith<$Res> {
  factory $SavepostStateDataCopyWith(
          SavepostStateData value, $Res Function(SavepostStateData) then) =
      _$SavepostStateDataCopyWithImpl<$Res, SavepostStateData>;
  @useResult
  $Res call(
      {String error,
      AddPostResponse? data,
      SuccesResponseBool? savePost,
      bool isSave,
      int numberSave});
}

/// @nodoc
class _$SavepostStateDataCopyWithImpl<$Res, $Val extends SavepostStateData>
    implements $SavepostStateDataCopyWith<$Res> {
  _$SavepostStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? data = freezed,
    Object? savePost = freezed,
    Object? isSave = null,
    Object? numberSave = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddPostResponse?,
      savePost: freezed == savePost
          ? _value.savePost
          : savePost // ignore: cast_nullable_to_non_nullable
              as SuccesResponseBool?,
      isSave: null == isSave
          ? _value.isSave
          : isSave // ignore: cast_nullable_to_non_nullable
              as bool,
      numberSave: null == numberSave
          ? _value.numberSave
          : numberSave // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavepostStateDataImplCopyWith<$Res>
    implements $SavepostStateDataCopyWith<$Res> {
  factory _$$SavepostStateDataImplCopyWith(_$SavepostStateDataImpl value,
          $Res Function(_$SavepostStateDataImpl) then) =
      __$$SavepostStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      AddPostResponse? data,
      SuccesResponseBool? savePost,
      bool isSave,
      int numberSave});
}

/// @nodoc
class __$$SavepostStateDataImplCopyWithImpl<$Res>
    extends _$SavepostStateDataCopyWithImpl<$Res, _$SavepostStateDataImpl>
    implements _$$SavepostStateDataImplCopyWith<$Res> {
  __$$SavepostStateDataImplCopyWithImpl(_$SavepostStateDataImpl _value,
      $Res Function(_$SavepostStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? data = freezed,
    Object? savePost = freezed,
    Object? isSave = null,
    Object? numberSave = null,
  }) {
    return _then(_$SavepostStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddPostResponse?,
      savePost: freezed == savePost
          ? _value.savePost
          : savePost // ignore: cast_nullable_to_non_nullable
              as SuccesResponseBool?,
      isSave: null == isSave
          ? _value.isSave
          : isSave // ignore: cast_nullable_to_non_nullable
              as bool,
      numberSave: null == numberSave
          ? _value.numberSave
          : numberSave // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SavepostStateDataImpl implements _SavepostStateData {
  const _$SavepostStateDataImpl(
      {this.error = '',
      this.data,
      this.savePost,
      this.isSave = false,
      this.numberSave = 0});

  @override
  @JsonKey()
  final String error;
  @override
  final AddPostResponse? data;
  @override
  final SuccesResponseBool? savePost;
  @override
  @JsonKey()
  final bool isSave;
  @override
  @JsonKey()
  final int numberSave;

  @override
  String toString() {
    return 'SavepostStateData(error: $error, data: $data, savePost: $savePost, isSave: $isSave, numberSave: $numberSave)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavepostStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.savePost, savePost) ||
                other.savePost == savePost) &&
            (identical(other.isSave, isSave) || other.isSave == isSave) &&
            (identical(other.numberSave, numberSave) ||
                other.numberSave == numberSave));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, data, savePost, isSave, numberSave);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavepostStateDataImplCopyWith<_$SavepostStateDataImpl> get copyWith =>
      __$$SavepostStateDataImplCopyWithImpl<_$SavepostStateDataImpl>(
          this, _$identity);
}

abstract class _SavepostStateData implements SavepostStateData {
  const factory _SavepostStateData(
      {final String error,
      final AddPostResponse? data,
      final SuccesResponseBool? savePost,
      final bool isSave,
      final int numberSave}) = _$SavepostStateDataImpl;

  @override
  String get error;
  @override
  AddPostResponse? get data;
  @override
  SuccesResponseBool? get savePost;
  @override
  bool get isSave;
  @override
  int get numberSave;
  @override
  @JsonKey(ignore: true)
  _$$SavepostStateDataImplCopyWith<_$SavepostStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SavepostState {
  SavepostStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SavepostStateData data) initial,
    required TResult Function(SavepostStateData data) getError,
    required TResult Function(SavepostStateData data) savePost,
    required TResult Function(SavepostStateData data) isSave,
    required TResult Function(SavepostStateData data) numberSave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SavepostStateData data)? initial,
    TResult? Function(SavepostStateData data)? getError,
    TResult? Function(SavepostStateData data)? savePost,
    TResult? Function(SavepostStateData data)? isSave,
    TResult? Function(SavepostStateData data)? numberSave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SavepostStateData data)? initial,
    TResult Function(SavepostStateData data)? getError,
    TResult Function(SavepostStateData data)? savePost,
    TResult Function(SavepostStateData data)? isSave,
    TResult Function(SavepostStateData data)? numberSave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(SavePost value) savePost,
    required TResult Function(IsSave value) isSave,
    required TResult Function(NumberSave value) numberSave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(SavePost value)? savePost,
    TResult? Function(IsSave value)? isSave,
    TResult? Function(NumberSave value)? numberSave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(SavePost value)? savePost,
    TResult Function(IsSave value)? isSave,
    TResult Function(NumberSave value)? numberSave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavepostStateCopyWith<SavepostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavepostStateCopyWith<$Res> {
  factory $SavepostStateCopyWith(
          SavepostState value, $Res Function(SavepostState) then) =
      _$SavepostStateCopyWithImpl<$Res, SavepostState>;
  @useResult
  $Res call({SavepostStateData data});

  $SavepostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SavepostStateCopyWithImpl<$Res, $Val extends SavepostState>
    implements $SavepostStateCopyWith<$Res> {
  _$SavepostStateCopyWithImpl(this._value, this._then);

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
              as SavepostStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SavepostStateDataCopyWith<$Res> get data {
    return $SavepostStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SavepostStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SavepostStateData data});

  @override
  $SavepostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SavepostStateCopyWithImpl<$Res, _$InitialImpl>
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
              as SavepostStateData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({required this.data});

  @override
  final SavepostStateData data;

  @override
  String toString() {
    return 'SavepostState.initial(data: $data)';
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
    required TResult Function(SavepostStateData data) initial,
    required TResult Function(SavepostStateData data) getError,
    required TResult Function(SavepostStateData data) savePost,
    required TResult Function(SavepostStateData data) isSave,
    required TResult Function(SavepostStateData data) numberSave,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SavepostStateData data)? initial,
    TResult? Function(SavepostStateData data)? getError,
    TResult? Function(SavepostStateData data)? savePost,
    TResult? Function(SavepostStateData data)? isSave,
    TResult? Function(SavepostStateData data)? numberSave,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SavepostStateData data)? initial,
    TResult Function(SavepostStateData data)? getError,
    TResult Function(SavepostStateData data)? savePost,
    TResult Function(SavepostStateData data)? isSave,
    TResult Function(SavepostStateData data)? numberSave,
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
    required TResult Function(SavePost value) savePost,
    required TResult Function(IsSave value) isSave,
    required TResult Function(NumberSave value) numberSave,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(SavePost value)? savePost,
    TResult? Function(IsSave value)? isSave,
    TResult? Function(NumberSave value)? numberSave,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(SavePost value)? savePost,
    TResult Function(IsSave value)? isSave,
    TResult Function(NumberSave value)? numberSave,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SavepostState {
  const factory Initial({required final SavepostStateData data}) =
      _$InitialImpl;

  @override
  SavepostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $SavepostStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SavepostStateData data});

  @override
  $SavepostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$SavepostStateCopyWithImpl<$Res, _$GetErrorImpl>
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
              as SavepostStateData,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl implements GetError {
  const _$GetErrorImpl({required this.data});

  @override
  final SavepostStateData data;

  @override
  String toString() {
    return 'SavepostState.getError(data: $data)';
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
    required TResult Function(SavepostStateData data) initial,
    required TResult Function(SavepostStateData data) getError,
    required TResult Function(SavepostStateData data) savePost,
    required TResult Function(SavepostStateData data) isSave,
    required TResult Function(SavepostStateData data) numberSave,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SavepostStateData data)? initial,
    TResult? Function(SavepostStateData data)? getError,
    TResult? Function(SavepostStateData data)? savePost,
    TResult? Function(SavepostStateData data)? isSave,
    TResult? Function(SavepostStateData data)? numberSave,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SavepostStateData data)? initial,
    TResult Function(SavepostStateData data)? getError,
    TResult Function(SavepostStateData data)? savePost,
    TResult Function(SavepostStateData data)? isSave,
    TResult Function(SavepostStateData data)? numberSave,
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
    required TResult Function(SavePost value) savePost,
    required TResult Function(IsSave value) isSave,
    required TResult Function(NumberSave value) numberSave,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(SavePost value)? savePost,
    TResult? Function(IsSave value)? isSave,
    TResult? Function(NumberSave value)? numberSave,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(SavePost value)? savePost,
    TResult Function(IsSave value)? isSave,
    TResult Function(NumberSave value)? numberSave,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements SavepostState {
  const factory GetError({required final SavepostStateData data}) =
      _$GetErrorImpl;

  @override
  SavepostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavePostImplCopyWith<$Res>
    implements $SavepostStateCopyWith<$Res> {
  factory _$$SavePostImplCopyWith(
          _$SavePostImpl value, $Res Function(_$SavePostImpl) then) =
      __$$SavePostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SavepostStateData data});

  @override
  $SavepostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SavePostImplCopyWithImpl<$Res>
    extends _$SavepostStateCopyWithImpl<$Res, _$SavePostImpl>
    implements _$$SavePostImplCopyWith<$Res> {
  __$$SavePostImplCopyWithImpl(
      _$SavePostImpl _value, $Res Function(_$SavePostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SavePostImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SavepostStateData,
    ));
  }
}

/// @nodoc

class _$SavePostImpl implements SavePost {
  const _$SavePostImpl({required this.data});

  @override
  final SavepostStateData data;

  @override
  String toString() {
    return 'SavepostState.savePost(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePostImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePostImplCopyWith<_$SavePostImpl> get copyWith =>
      __$$SavePostImplCopyWithImpl<_$SavePostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SavepostStateData data) initial,
    required TResult Function(SavepostStateData data) getError,
    required TResult Function(SavepostStateData data) savePost,
    required TResult Function(SavepostStateData data) isSave,
    required TResult Function(SavepostStateData data) numberSave,
  }) {
    return savePost(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SavepostStateData data)? initial,
    TResult? Function(SavepostStateData data)? getError,
    TResult? Function(SavepostStateData data)? savePost,
    TResult? Function(SavepostStateData data)? isSave,
    TResult? Function(SavepostStateData data)? numberSave,
  }) {
    return savePost?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SavepostStateData data)? initial,
    TResult Function(SavepostStateData data)? getError,
    TResult Function(SavepostStateData data)? savePost,
    TResult Function(SavepostStateData data)? isSave,
    TResult Function(SavepostStateData data)? numberSave,
    required TResult orElse(),
  }) {
    if (savePost != null) {
      return savePost(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(SavePost value) savePost,
    required TResult Function(IsSave value) isSave,
    required TResult Function(NumberSave value) numberSave,
  }) {
    return savePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(SavePost value)? savePost,
    TResult? Function(IsSave value)? isSave,
    TResult? Function(NumberSave value)? numberSave,
  }) {
    return savePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(SavePost value)? savePost,
    TResult Function(IsSave value)? isSave,
    TResult Function(NumberSave value)? numberSave,
    required TResult orElse(),
  }) {
    if (savePost != null) {
      return savePost(this);
    }
    return orElse();
  }
}

abstract class SavePost implements SavepostState {
  const factory SavePost({required final SavepostStateData data}) =
      _$SavePostImpl;

  @override
  SavepostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$SavePostImplCopyWith<_$SavePostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsSaveImplCopyWith<$Res>
    implements $SavepostStateCopyWith<$Res> {
  factory _$$IsSaveImplCopyWith(
          _$IsSaveImpl value, $Res Function(_$IsSaveImpl) then) =
      __$$IsSaveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SavepostStateData data});

  @override
  $SavepostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$IsSaveImplCopyWithImpl<$Res>
    extends _$SavepostStateCopyWithImpl<$Res, _$IsSaveImpl>
    implements _$$IsSaveImplCopyWith<$Res> {
  __$$IsSaveImplCopyWithImpl(
      _$IsSaveImpl _value, $Res Function(_$IsSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$IsSaveImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SavepostStateData,
    ));
  }
}

/// @nodoc

class _$IsSaveImpl implements IsSave {
  const _$IsSaveImpl({required this.data});

  @override
  final SavepostStateData data;

  @override
  String toString() {
    return 'SavepostState.isSave(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsSaveImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsSaveImplCopyWith<_$IsSaveImpl> get copyWith =>
      __$$IsSaveImplCopyWithImpl<_$IsSaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SavepostStateData data) initial,
    required TResult Function(SavepostStateData data) getError,
    required TResult Function(SavepostStateData data) savePost,
    required TResult Function(SavepostStateData data) isSave,
    required TResult Function(SavepostStateData data) numberSave,
  }) {
    return isSave(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SavepostStateData data)? initial,
    TResult? Function(SavepostStateData data)? getError,
    TResult? Function(SavepostStateData data)? savePost,
    TResult? Function(SavepostStateData data)? isSave,
    TResult? Function(SavepostStateData data)? numberSave,
  }) {
    return isSave?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SavepostStateData data)? initial,
    TResult Function(SavepostStateData data)? getError,
    TResult Function(SavepostStateData data)? savePost,
    TResult Function(SavepostStateData data)? isSave,
    TResult Function(SavepostStateData data)? numberSave,
    required TResult orElse(),
  }) {
    if (isSave != null) {
      return isSave(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(SavePost value) savePost,
    required TResult Function(IsSave value) isSave,
    required TResult Function(NumberSave value) numberSave,
  }) {
    return isSave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(SavePost value)? savePost,
    TResult? Function(IsSave value)? isSave,
    TResult? Function(NumberSave value)? numberSave,
  }) {
    return isSave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(SavePost value)? savePost,
    TResult Function(IsSave value)? isSave,
    TResult Function(NumberSave value)? numberSave,
    required TResult orElse(),
  }) {
    if (isSave != null) {
      return isSave(this);
    }
    return orElse();
  }
}

abstract class IsSave implements SavepostState {
  const factory IsSave({required final SavepostStateData data}) = _$IsSaveImpl;

  @override
  SavepostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$IsSaveImplCopyWith<_$IsSaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumberSaveImplCopyWith<$Res>
    implements $SavepostStateCopyWith<$Res> {
  factory _$$NumberSaveImplCopyWith(
          _$NumberSaveImpl value, $Res Function(_$NumberSaveImpl) then) =
      __$$NumberSaveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SavepostStateData data});

  @override
  $SavepostStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$NumberSaveImplCopyWithImpl<$Res>
    extends _$SavepostStateCopyWithImpl<$Res, _$NumberSaveImpl>
    implements _$$NumberSaveImplCopyWith<$Res> {
  __$$NumberSaveImplCopyWithImpl(
      _$NumberSaveImpl _value, $Res Function(_$NumberSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$NumberSaveImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SavepostStateData,
    ));
  }
}

/// @nodoc

class _$NumberSaveImpl implements NumberSave {
  const _$NumberSaveImpl({required this.data});

  @override
  final SavepostStateData data;

  @override
  String toString() {
    return 'SavepostState.numberSave(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberSaveImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberSaveImplCopyWith<_$NumberSaveImpl> get copyWith =>
      __$$NumberSaveImplCopyWithImpl<_$NumberSaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SavepostStateData data) initial,
    required TResult Function(SavepostStateData data) getError,
    required TResult Function(SavepostStateData data) savePost,
    required TResult Function(SavepostStateData data) isSave,
    required TResult Function(SavepostStateData data) numberSave,
  }) {
    return numberSave(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SavepostStateData data)? initial,
    TResult? Function(SavepostStateData data)? getError,
    TResult? Function(SavepostStateData data)? savePost,
    TResult? Function(SavepostStateData data)? isSave,
    TResult? Function(SavepostStateData data)? numberSave,
  }) {
    return numberSave?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SavepostStateData data)? initial,
    TResult Function(SavepostStateData data)? getError,
    TResult Function(SavepostStateData data)? savePost,
    TResult Function(SavepostStateData data)? isSave,
    TResult Function(SavepostStateData data)? numberSave,
    required TResult orElse(),
  }) {
    if (numberSave != null) {
      return numberSave(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(SavePost value) savePost,
    required TResult Function(IsSave value) isSave,
    required TResult Function(NumberSave value) numberSave,
  }) {
    return numberSave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(SavePost value)? savePost,
    TResult? Function(IsSave value)? isSave,
    TResult? Function(NumberSave value)? numberSave,
  }) {
    return numberSave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(SavePost value)? savePost,
    TResult Function(IsSave value)? isSave,
    TResult Function(NumberSave value)? numberSave,
    required TResult orElse(),
  }) {
    if (numberSave != null) {
      return numberSave(this);
    }
    return orElse();
  }
}

abstract class NumberSave implements SavepostState {
  const factory NumberSave({required final SavepostStateData data}) =
      _$NumberSaveImpl;

  @override
  SavepostStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$NumberSaveImplCopyWith<_$NumberSaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
