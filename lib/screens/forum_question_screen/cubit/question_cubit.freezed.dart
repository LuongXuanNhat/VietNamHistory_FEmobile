// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionStateData {
  String get error => throw _privateConstructorUsedError;
  QuestionResponse? get questionResponse => throw _privateConstructorUsedError;
  ListQuestionResponse? get listQuestionResponse =>
      throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionStateDataCopyWith<QuestionStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateDataCopyWith<$Res> {
  factory $QuestionStateDataCopyWith(
          QuestionStateData value, $Res Function(QuestionStateData) then) =
      _$QuestionStateDataCopyWithImpl<$Res, QuestionStateData>;
  @useResult
  $Res call(
      {String error,
      QuestionResponse? questionResponse,
      ListQuestionResponse? listQuestionResponse,
      String? fullName,
      String? image});
}

/// @nodoc
class _$QuestionStateDataCopyWithImpl<$Res, $Val extends QuestionStateData>
    implements $QuestionStateDataCopyWith<$Res> {
  _$QuestionStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? questionResponse = freezed,
    Object? listQuestionResponse = freezed,
    Object? fullName = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      questionResponse: freezed == questionResponse
          ? _value.questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as QuestionResponse?,
      listQuestionResponse: freezed == listQuestionResponse
          ? _value.listQuestionResponse
          : listQuestionResponse // ignore: cast_nullable_to_non_nullable
              as ListQuestionResponse?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionStateDataImplCopyWith<$Res>
    implements $QuestionStateDataCopyWith<$Res> {
  factory _$$QuestionStateDataImplCopyWith(_$QuestionStateDataImpl value,
          $Res Function(_$QuestionStateDataImpl) then) =
      __$$QuestionStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      QuestionResponse? questionResponse,
      ListQuestionResponse? listQuestionResponse,
      String? fullName,
      String? image});
}

/// @nodoc
class __$$QuestionStateDataImplCopyWithImpl<$Res>
    extends _$QuestionStateDataCopyWithImpl<$Res, _$QuestionStateDataImpl>
    implements _$$QuestionStateDataImplCopyWith<$Res> {
  __$$QuestionStateDataImplCopyWithImpl(_$QuestionStateDataImpl _value,
      $Res Function(_$QuestionStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? questionResponse = freezed,
    Object? listQuestionResponse = freezed,
    Object? fullName = freezed,
    Object? image = freezed,
  }) {
    return _then(_$QuestionStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      questionResponse: freezed == questionResponse
          ? _value.questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as QuestionResponse?,
      listQuestionResponse: freezed == listQuestionResponse
          ? _value.listQuestionResponse
          : listQuestionResponse // ignore: cast_nullable_to_non_nullable
              as ListQuestionResponse?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$QuestionStateDataImpl implements _QuestionStateData {
  const _$QuestionStateDataImpl(
      {this.error = '',
      this.questionResponse,
      this.listQuestionResponse,
      this.fullName = '',
      this.image = ''});

  @override
  @JsonKey()
  final String error;
  @override
  final QuestionResponse? questionResponse;
  @override
  final ListQuestionResponse? listQuestionResponse;
  @override
  @JsonKey()
  final String? fullName;
  @override
  @JsonKey()
  final String? image;

  @override
  String toString() {
    return 'QuestionStateData(error: $error, questionResponse: $questionResponse, listQuestionResponse: $listQuestionResponse, fullName: $fullName, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.questionResponse, questionResponse) ||
                other.questionResponse == questionResponse) &&
            (identical(other.listQuestionResponse, listQuestionResponse) ||
                other.listQuestionResponse == listQuestionResponse) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, questionResponse,
      listQuestionResponse, fullName, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionStateDataImplCopyWith<_$QuestionStateDataImpl> get copyWith =>
      __$$QuestionStateDataImplCopyWithImpl<_$QuestionStateDataImpl>(
          this, _$identity);
}

abstract class _QuestionStateData implements QuestionStateData {
  const factory _QuestionStateData(
      {final String error,
      final QuestionResponse? questionResponse,
      final ListQuestionResponse? listQuestionResponse,
      final String? fullName,
      final String? image}) = _$QuestionStateDataImpl;

  @override
  String get error;
  @override
  QuestionResponse? get questionResponse;
  @override
  ListQuestionResponse? get listQuestionResponse;
  @override
  String? get fullName;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$QuestionStateDataImplCopyWith<_$QuestionStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionState {
  QuestionStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionStateData data) initial,
    required TResult Function(QuestionStateData data) loadImage,
    required TResult Function(QuestionStateData data) loadFullName,
    required TResult Function(QuestionStateData data) getAllQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionStateData data)? initial,
    TResult? Function(QuestionStateData data)? loadImage,
    TResult? Function(QuestionStateData data)? loadFullName,
    TResult? Function(QuestionStateData data)? getAllQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionStateData data)? initial,
    TResult Function(QuestionStateData data)? loadImage,
    TResult Function(QuestionStateData data)? loadFullName,
    TResult Function(QuestionStateData data)? getAllQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(LoadFullName value) loadFullName,
    required TResult Function(GetAllQuestion value) getAllQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(LoadFullName value)? loadFullName,
    TResult? Function(GetAllQuestion value)? getAllQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadImage value)? loadImage,
    TResult Function(LoadFullName value)? loadFullName,
    TResult Function(GetAllQuestion value)? getAllQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionStateCopyWith<QuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res, QuestionState>;
  @useResult
  $Res call({QuestionStateData data});

  $QuestionStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res, $Val extends QuestionState>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

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
              as QuestionStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionStateDataCopyWith<$Res> get data {
    return $QuestionStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $QuestionStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuestionStateData data});

  @override
  $QuestionStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$InitialImpl>
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
              as QuestionStateData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({required this.data});

  @override
  final QuestionStateData data;

  @override
  String toString() {
    return 'QuestionState.initial(data: $data)';
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
    required TResult Function(QuestionStateData data) initial,
    required TResult Function(QuestionStateData data) loadImage,
    required TResult Function(QuestionStateData data) loadFullName,
    required TResult Function(QuestionStateData data) getAllQuestion,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionStateData data)? initial,
    TResult? Function(QuestionStateData data)? loadImage,
    TResult? Function(QuestionStateData data)? loadFullName,
    TResult? Function(QuestionStateData data)? getAllQuestion,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionStateData data)? initial,
    TResult Function(QuestionStateData data)? loadImage,
    TResult Function(QuestionStateData data)? loadFullName,
    TResult Function(QuestionStateData data)? getAllQuestion,
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
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(LoadFullName value) loadFullName,
    required TResult Function(GetAllQuestion value) getAllQuestion,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(LoadFullName value)? loadFullName,
    TResult? Function(GetAllQuestion value)? getAllQuestion,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadImage value)? loadImage,
    TResult Function(LoadFullName value)? loadFullName,
    TResult Function(GetAllQuestion value)? getAllQuestion,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements QuestionState {
  const factory Initial({required final QuestionStateData data}) =
      _$InitialImpl;

  @override
  QuestionStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadImageImplCopyWith<$Res>
    implements $QuestionStateCopyWith<$Res> {
  factory _$$LoadImageImplCopyWith(
          _$LoadImageImpl value, $Res Function(_$LoadImageImpl) then) =
      __$$LoadImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuestionStateData data});

  @override
  $QuestionStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadImageImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$LoadImageImpl>
    implements _$$LoadImageImplCopyWith<$Res> {
  __$$LoadImageImplCopyWithImpl(
      _$LoadImageImpl _value, $Res Function(_$LoadImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadImageImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as QuestionStateData,
    ));
  }
}

/// @nodoc

class _$LoadImageImpl implements LoadImage {
  const _$LoadImageImpl({required this.data});

  @override
  final QuestionStateData data;

  @override
  String toString() {
    return 'QuestionState.loadImage(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadImageImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadImageImplCopyWith<_$LoadImageImpl> get copyWith =>
      __$$LoadImageImplCopyWithImpl<_$LoadImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionStateData data) initial,
    required TResult Function(QuestionStateData data) loadImage,
    required TResult Function(QuestionStateData data) loadFullName,
    required TResult Function(QuestionStateData data) getAllQuestion,
  }) {
    return loadImage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionStateData data)? initial,
    TResult? Function(QuestionStateData data)? loadImage,
    TResult? Function(QuestionStateData data)? loadFullName,
    TResult? Function(QuestionStateData data)? getAllQuestion,
  }) {
    return loadImage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionStateData data)? initial,
    TResult Function(QuestionStateData data)? loadImage,
    TResult Function(QuestionStateData data)? loadFullName,
    TResult Function(QuestionStateData data)? getAllQuestion,
    required TResult orElse(),
  }) {
    if (loadImage != null) {
      return loadImage(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(LoadFullName value) loadFullName,
    required TResult Function(GetAllQuestion value) getAllQuestion,
  }) {
    return loadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(LoadFullName value)? loadFullName,
    TResult? Function(GetAllQuestion value)? getAllQuestion,
  }) {
    return loadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadImage value)? loadImage,
    TResult Function(LoadFullName value)? loadFullName,
    TResult Function(GetAllQuestion value)? getAllQuestion,
    required TResult orElse(),
  }) {
    if (loadImage != null) {
      return loadImage(this);
    }
    return orElse();
  }
}

abstract class LoadImage implements QuestionState {
  const factory LoadImage({required final QuestionStateData data}) =
      _$LoadImageImpl;

  @override
  QuestionStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$LoadImageImplCopyWith<_$LoadImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFullNameImplCopyWith<$Res>
    implements $QuestionStateCopyWith<$Res> {
  factory _$$LoadFullNameImplCopyWith(
          _$LoadFullNameImpl value, $Res Function(_$LoadFullNameImpl) then) =
      __$$LoadFullNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuestionStateData data});

  @override
  $QuestionStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadFullNameImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$LoadFullNameImpl>
    implements _$$LoadFullNameImplCopyWith<$Res> {
  __$$LoadFullNameImplCopyWithImpl(
      _$LoadFullNameImpl _value, $Res Function(_$LoadFullNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadFullNameImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as QuestionStateData,
    ));
  }
}

/// @nodoc

class _$LoadFullNameImpl implements LoadFullName {
  const _$LoadFullNameImpl({required this.data});

  @override
  final QuestionStateData data;

  @override
  String toString() {
    return 'QuestionState.loadFullName(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFullNameImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFullNameImplCopyWith<_$LoadFullNameImpl> get copyWith =>
      __$$LoadFullNameImplCopyWithImpl<_$LoadFullNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionStateData data) initial,
    required TResult Function(QuestionStateData data) loadImage,
    required TResult Function(QuestionStateData data) loadFullName,
    required TResult Function(QuestionStateData data) getAllQuestion,
  }) {
    return loadFullName(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionStateData data)? initial,
    TResult? Function(QuestionStateData data)? loadImage,
    TResult? Function(QuestionStateData data)? loadFullName,
    TResult? Function(QuestionStateData data)? getAllQuestion,
  }) {
    return loadFullName?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionStateData data)? initial,
    TResult Function(QuestionStateData data)? loadImage,
    TResult Function(QuestionStateData data)? loadFullName,
    TResult Function(QuestionStateData data)? getAllQuestion,
    required TResult orElse(),
  }) {
    if (loadFullName != null) {
      return loadFullName(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(LoadFullName value) loadFullName,
    required TResult Function(GetAllQuestion value) getAllQuestion,
  }) {
    return loadFullName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(LoadFullName value)? loadFullName,
    TResult? Function(GetAllQuestion value)? getAllQuestion,
  }) {
    return loadFullName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadImage value)? loadImage,
    TResult Function(LoadFullName value)? loadFullName,
    TResult Function(GetAllQuestion value)? getAllQuestion,
    required TResult orElse(),
  }) {
    if (loadFullName != null) {
      return loadFullName(this);
    }
    return orElse();
  }
}

abstract class LoadFullName implements QuestionState {
  const factory LoadFullName({required final QuestionStateData data}) =
      _$LoadFullNameImpl;

  @override
  QuestionStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$LoadFullNameImplCopyWith<_$LoadFullNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllQuestionImplCopyWith<$Res>
    implements $QuestionStateCopyWith<$Res> {
  factory _$$GetAllQuestionImplCopyWith(_$GetAllQuestionImpl value,
          $Res Function(_$GetAllQuestionImpl) then) =
      __$$GetAllQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuestionStateData data});

  @override
  $QuestionStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetAllQuestionImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$GetAllQuestionImpl>
    implements _$$GetAllQuestionImplCopyWith<$Res> {
  __$$GetAllQuestionImplCopyWithImpl(
      _$GetAllQuestionImpl _value, $Res Function(_$GetAllQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetAllQuestionImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as QuestionStateData,
    ));
  }
}

/// @nodoc

class _$GetAllQuestionImpl implements GetAllQuestion {
  const _$GetAllQuestionImpl({required this.data});

  @override
  final QuestionStateData data;

  @override
  String toString() {
    return 'QuestionState.getAllQuestion(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllQuestionImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllQuestionImplCopyWith<_$GetAllQuestionImpl> get copyWith =>
      __$$GetAllQuestionImplCopyWithImpl<_$GetAllQuestionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionStateData data) initial,
    required TResult Function(QuestionStateData data) loadImage,
    required TResult Function(QuestionStateData data) loadFullName,
    required TResult Function(QuestionStateData data) getAllQuestion,
  }) {
    return getAllQuestion(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionStateData data)? initial,
    TResult? Function(QuestionStateData data)? loadImage,
    TResult? Function(QuestionStateData data)? loadFullName,
    TResult? Function(QuestionStateData data)? getAllQuestion,
  }) {
    return getAllQuestion?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionStateData data)? initial,
    TResult Function(QuestionStateData data)? loadImage,
    TResult Function(QuestionStateData data)? loadFullName,
    TResult Function(QuestionStateData data)? getAllQuestion,
    required TResult orElse(),
  }) {
    if (getAllQuestion != null) {
      return getAllQuestion(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(LoadFullName value) loadFullName,
    required TResult Function(GetAllQuestion value) getAllQuestion,
  }) {
    return getAllQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(LoadFullName value)? loadFullName,
    TResult? Function(GetAllQuestion value)? getAllQuestion,
  }) {
    return getAllQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadImage value)? loadImage,
    TResult Function(LoadFullName value)? loadFullName,
    TResult Function(GetAllQuestion value)? getAllQuestion,
    required TResult orElse(),
  }) {
    if (getAllQuestion != null) {
      return getAllQuestion(this);
    }
    return orElse();
  }
}

abstract class GetAllQuestion implements QuestionState {
  const factory GetAllQuestion({required final QuestionStateData data}) =
      _$GetAllQuestionImpl;

  @override
  QuestionStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetAllQuestionImplCopyWith<_$GetAllQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
