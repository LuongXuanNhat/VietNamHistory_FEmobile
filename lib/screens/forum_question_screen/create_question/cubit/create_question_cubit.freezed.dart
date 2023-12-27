// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_question_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateQuestionStateData {
  String get error => throw _privateConstructorUsedError;
  QuestionResponse? get questionResponse => throw _privateConstructorUsedError;
  ListQuestionResponse? get listQuestionResponse =>
      throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateQuestionStateDataCopyWith<CreateQuestionStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQuestionStateDataCopyWith<$Res> {
  factory $CreateQuestionStateDataCopyWith(CreateQuestionStateData value,
          $Res Function(CreateQuestionStateData) then) =
      _$CreateQuestionStateDataCopyWithImpl<$Res, CreateQuestionStateData>;
  @useResult
  $Res call(
      {String error,
      QuestionResponse? questionResponse,
      ListQuestionResponse? listQuestionResponse,
      String image,
      String fullName});
}

/// @nodoc
class _$CreateQuestionStateDataCopyWithImpl<$Res,
        $Val extends CreateQuestionStateData>
    implements $CreateQuestionStateDataCopyWith<$Res> {
  _$CreateQuestionStateDataCopyWithImpl(this._value, this._then);

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
    Object? image = null,
    Object? fullName = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateQuestionScrennStateDataImplCopyWith<$Res>
    implements $CreateQuestionStateDataCopyWith<$Res> {
  factory _$$CreateQuestionScrennStateDataImplCopyWith(
          _$CreateQuestionScrennStateDataImpl value,
          $Res Function(_$CreateQuestionScrennStateDataImpl) then) =
      __$$CreateQuestionScrennStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      QuestionResponse? questionResponse,
      ListQuestionResponse? listQuestionResponse,
      String image,
      String fullName});
}

/// @nodoc
class __$$CreateQuestionScrennStateDataImplCopyWithImpl<$Res>
    extends _$CreateQuestionStateDataCopyWithImpl<$Res,
        _$CreateQuestionScrennStateDataImpl>
    implements _$$CreateQuestionScrennStateDataImplCopyWith<$Res> {
  __$$CreateQuestionScrennStateDataImplCopyWithImpl(
      _$CreateQuestionScrennStateDataImpl _value,
      $Res Function(_$CreateQuestionScrennStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? questionResponse = freezed,
    Object? listQuestionResponse = freezed,
    Object? image = null,
    Object? fullName = null,
  }) {
    return _then(_$CreateQuestionScrennStateDataImpl(
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateQuestionScrennStateDataImpl
    implements _CreateQuestionScrennStateData {
  const _$CreateQuestionScrennStateDataImpl(
      {this.error = '',
      this.questionResponse,
      this.listQuestionResponse,
      this.image = '',
      this.fullName = ''});

  @override
  @JsonKey()
  final String error;
  @override
  final QuestionResponse? questionResponse;
  @override
  final ListQuestionResponse? listQuestionResponse;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String fullName;

  @override
  String toString() {
    return 'CreateQuestionStateData(error: $error, questionResponse: $questionResponse, listQuestionResponse: $listQuestionResponse, image: $image, fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateQuestionScrennStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.questionResponse, questionResponse) ||
                other.questionResponse == questionResponse) &&
            (identical(other.listQuestionResponse, listQuestionResponse) ||
                other.listQuestionResponse == listQuestionResponse) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, questionResponse,
      listQuestionResponse, image, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateQuestionScrennStateDataImplCopyWith<
          _$CreateQuestionScrennStateDataImpl>
      get copyWith => __$$CreateQuestionScrennStateDataImplCopyWithImpl<
          _$CreateQuestionScrennStateDataImpl>(this, _$identity);
}

abstract class _CreateQuestionScrennStateData
    implements CreateQuestionStateData {
  const factory _CreateQuestionScrennStateData(
      {final String error,
      final QuestionResponse? questionResponse,
      final ListQuestionResponse? listQuestionResponse,
      final String image,
      final String fullName}) = _$CreateQuestionScrennStateDataImpl;

  @override
  String get error;
  @override
  QuestionResponse? get questionResponse;
  @override
  ListQuestionResponse? get listQuestionResponse;
  @override
  String get image;
  @override
  String get fullName;
  @override
  @JsonKey(ignore: true)
  _$$CreateQuestionScrennStateDataImplCopyWith<
          _$CreateQuestionScrennStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateQuestionState {
  CreateQuestionStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateQuestionStateData data) initial,
    required TResult Function(CreateQuestionStateData data) getError,
    required TResult Function(CreateQuestionStateData data) createQuestion,
    required TResult Function(CreateQuestionStateData data) loadImage,
    required TResult Function(CreateQuestionStateData data) loadFullName,
    required TResult Function(CreateQuestionStateData data) getAllQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateQuestionStateData data)? initial,
    TResult? Function(CreateQuestionStateData data)? getError,
    TResult? Function(CreateQuestionStateData data)? createQuestion,
    TResult? Function(CreateQuestionStateData data)? loadImage,
    TResult? Function(CreateQuestionStateData data)? loadFullName,
    TResult? Function(CreateQuestionStateData data)? getAllQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateQuestionStateData data)? initial,
    TResult Function(CreateQuestionStateData data)? getError,
    TResult Function(CreateQuestionStateData data)? createQuestion,
    TResult Function(CreateQuestionStateData data)? loadImage,
    TResult Function(CreateQuestionStateData data)? loadFullName,
    TResult Function(CreateQuestionStateData data)? getAllQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(CreateQuestion value) createQuestion,
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(LoadFullName value) loadFullName,
    required TResult Function(GetAllQuestion value) getAllQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(CreateQuestion value)? createQuestion,
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(LoadFullName value)? loadFullName,
    TResult? Function(GetAllQuestion value)? getAllQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(CreateQuestion value)? createQuestion,
    TResult Function(LoadImage value)? loadImage,
    TResult Function(LoadFullName value)? loadFullName,
    TResult Function(GetAllQuestion value)? getAllQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateQuestionStateCopyWith<CreateQuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQuestionStateCopyWith<$Res> {
  factory $CreateQuestionStateCopyWith(
          CreateQuestionState value, $Res Function(CreateQuestionState) then) =
      _$CreateQuestionStateCopyWithImpl<$Res, CreateQuestionState>;
  @useResult
  $Res call({CreateQuestionStateData data});

  $CreateQuestionStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateQuestionStateCopyWithImpl<$Res, $Val extends CreateQuestionState>
    implements $CreateQuestionStateCopyWith<$Res> {
  _$CreateQuestionStateCopyWithImpl(this._value, this._then);

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
              as CreateQuestionStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateQuestionStateDataCopyWith<$Res> get data {
    return $CreateQuestionStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CreateQuestionStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateQuestionStateData data});

  @override
  $CreateQuestionStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CreateQuestionStateCopyWithImpl<$Res, _$InitialImpl>
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
              as CreateQuestionStateData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({required this.data});

  @override
  final CreateQuestionStateData data;

  @override
  String toString() {
    return 'CreateQuestionState.initial(data: $data)';
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
    required TResult Function(CreateQuestionStateData data) initial,
    required TResult Function(CreateQuestionStateData data) getError,
    required TResult Function(CreateQuestionStateData data) createQuestion,
    required TResult Function(CreateQuestionStateData data) loadImage,
    required TResult Function(CreateQuestionStateData data) loadFullName,
    required TResult Function(CreateQuestionStateData data) getAllQuestion,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateQuestionStateData data)? initial,
    TResult? Function(CreateQuestionStateData data)? getError,
    TResult? Function(CreateQuestionStateData data)? createQuestion,
    TResult? Function(CreateQuestionStateData data)? loadImage,
    TResult? Function(CreateQuestionStateData data)? loadFullName,
    TResult? Function(CreateQuestionStateData data)? getAllQuestion,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateQuestionStateData data)? initial,
    TResult Function(CreateQuestionStateData data)? getError,
    TResult Function(CreateQuestionStateData data)? createQuestion,
    TResult Function(CreateQuestionStateData data)? loadImage,
    TResult Function(CreateQuestionStateData data)? loadFullName,
    TResult Function(CreateQuestionStateData data)? getAllQuestion,
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
    required TResult Function(CreateQuestion value) createQuestion,
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
    TResult? Function(GetError value)? getError,
    TResult? Function(CreateQuestion value)? createQuestion,
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
    TResult Function(GetError value)? getError,
    TResult Function(CreateQuestion value)? createQuestion,
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

abstract class Initial implements CreateQuestionState {
  const factory Initial({required final CreateQuestionStateData data}) =
      _$InitialImpl;

  @override
  CreateQuestionStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $CreateQuestionStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateQuestionStateData data});

  @override
  $CreateQuestionStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$CreateQuestionStateCopyWithImpl<$Res, _$GetErrorImpl>
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
              as CreateQuestionStateData,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl implements GetError {
  const _$GetErrorImpl({required this.data});

  @override
  final CreateQuestionStateData data;

  @override
  String toString() {
    return 'CreateQuestionState.getError(data: $data)';
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
    required TResult Function(CreateQuestionStateData data) initial,
    required TResult Function(CreateQuestionStateData data) getError,
    required TResult Function(CreateQuestionStateData data) createQuestion,
    required TResult Function(CreateQuestionStateData data) loadImage,
    required TResult Function(CreateQuestionStateData data) loadFullName,
    required TResult Function(CreateQuestionStateData data) getAllQuestion,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateQuestionStateData data)? initial,
    TResult? Function(CreateQuestionStateData data)? getError,
    TResult? Function(CreateQuestionStateData data)? createQuestion,
    TResult? Function(CreateQuestionStateData data)? loadImage,
    TResult? Function(CreateQuestionStateData data)? loadFullName,
    TResult? Function(CreateQuestionStateData data)? getAllQuestion,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateQuestionStateData data)? initial,
    TResult Function(CreateQuestionStateData data)? getError,
    TResult Function(CreateQuestionStateData data)? createQuestion,
    TResult Function(CreateQuestionStateData data)? loadImage,
    TResult Function(CreateQuestionStateData data)? loadFullName,
    TResult Function(CreateQuestionStateData data)? getAllQuestion,
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
    required TResult Function(CreateQuestion value) createQuestion,
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(LoadFullName value) loadFullName,
    required TResult Function(GetAllQuestion value) getAllQuestion,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(CreateQuestion value)? createQuestion,
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(LoadFullName value)? loadFullName,
    TResult? Function(GetAllQuestion value)? getAllQuestion,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(CreateQuestion value)? createQuestion,
    TResult Function(LoadImage value)? loadImage,
    TResult Function(LoadFullName value)? loadFullName,
    TResult Function(GetAllQuestion value)? getAllQuestion,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements CreateQuestionState {
  const factory GetError({required final CreateQuestionStateData data}) =
      _$GetErrorImpl;

  @override
  CreateQuestionStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateQuestionImplCopyWith<$Res>
    implements $CreateQuestionStateCopyWith<$Res> {
  factory _$$CreateQuestionImplCopyWith(_$CreateQuestionImpl value,
          $Res Function(_$CreateQuestionImpl) then) =
      __$$CreateQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateQuestionStateData data});

  @override
  $CreateQuestionStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CreateQuestionImplCopyWithImpl<$Res>
    extends _$CreateQuestionStateCopyWithImpl<$Res, _$CreateQuestionImpl>
    implements _$$CreateQuestionImplCopyWith<$Res> {
  __$$CreateQuestionImplCopyWithImpl(
      _$CreateQuestionImpl _value, $Res Function(_$CreateQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CreateQuestionImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateQuestionStateData,
    ));
  }
}

/// @nodoc

class _$CreateQuestionImpl implements CreateQuestion {
  const _$CreateQuestionImpl({required this.data});

  @override
  final CreateQuestionStateData data;

  @override
  String toString() {
    return 'CreateQuestionState.createQuestion(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateQuestionImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateQuestionImplCopyWith<_$CreateQuestionImpl> get copyWith =>
      __$$CreateQuestionImplCopyWithImpl<_$CreateQuestionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateQuestionStateData data) initial,
    required TResult Function(CreateQuestionStateData data) getError,
    required TResult Function(CreateQuestionStateData data) createQuestion,
    required TResult Function(CreateQuestionStateData data) loadImage,
    required TResult Function(CreateQuestionStateData data) loadFullName,
    required TResult Function(CreateQuestionStateData data) getAllQuestion,
  }) {
    return createQuestion(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateQuestionStateData data)? initial,
    TResult? Function(CreateQuestionStateData data)? getError,
    TResult? Function(CreateQuestionStateData data)? createQuestion,
    TResult? Function(CreateQuestionStateData data)? loadImage,
    TResult? Function(CreateQuestionStateData data)? loadFullName,
    TResult? Function(CreateQuestionStateData data)? getAllQuestion,
  }) {
    return createQuestion?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateQuestionStateData data)? initial,
    TResult Function(CreateQuestionStateData data)? getError,
    TResult Function(CreateQuestionStateData data)? createQuestion,
    TResult Function(CreateQuestionStateData data)? loadImage,
    TResult Function(CreateQuestionStateData data)? loadFullName,
    TResult Function(CreateQuestionStateData data)? getAllQuestion,
    required TResult orElse(),
  }) {
    if (createQuestion != null) {
      return createQuestion(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(CreateQuestion value) createQuestion,
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(LoadFullName value) loadFullName,
    required TResult Function(GetAllQuestion value) getAllQuestion,
  }) {
    return createQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(CreateQuestion value)? createQuestion,
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(LoadFullName value)? loadFullName,
    TResult? Function(GetAllQuestion value)? getAllQuestion,
  }) {
    return createQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(CreateQuestion value)? createQuestion,
    TResult Function(LoadImage value)? loadImage,
    TResult Function(LoadFullName value)? loadFullName,
    TResult Function(GetAllQuestion value)? getAllQuestion,
    required TResult orElse(),
  }) {
    if (createQuestion != null) {
      return createQuestion(this);
    }
    return orElse();
  }
}

abstract class CreateQuestion implements CreateQuestionState {
  const factory CreateQuestion({required final CreateQuestionStateData data}) =
      _$CreateQuestionImpl;

  @override
  CreateQuestionStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateQuestionImplCopyWith<_$CreateQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadImageImplCopyWith<$Res>
    implements $CreateQuestionStateCopyWith<$Res> {
  factory _$$LoadImageImplCopyWith(
          _$LoadImageImpl value, $Res Function(_$LoadImageImpl) then) =
      __$$LoadImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateQuestionStateData data});

  @override
  $CreateQuestionStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadImageImplCopyWithImpl<$Res>
    extends _$CreateQuestionStateCopyWithImpl<$Res, _$LoadImageImpl>
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
              as CreateQuestionStateData,
    ));
  }
}

/// @nodoc

class _$LoadImageImpl implements LoadImage {
  const _$LoadImageImpl({required this.data});

  @override
  final CreateQuestionStateData data;

  @override
  String toString() {
    return 'CreateQuestionState.loadImage(data: $data)';
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
    required TResult Function(CreateQuestionStateData data) initial,
    required TResult Function(CreateQuestionStateData data) getError,
    required TResult Function(CreateQuestionStateData data) createQuestion,
    required TResult Function(CreateQuestionStateData data) loadImage,
    required TResult Function(CreateQuestionStateData data) loadFullName,
    required TResult Function(CreateQuestionStateData data) getAllQuestion,
  }) {
    return loadImage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateQuestionStateData data)? initial,
    TResult? Function(CreateQuestionStateData data)? getError,
    TResult? Function(CreateQuestionStateData data)? createQuestion,
    TResult? Function(CreateQuestionStateData data)? loadImage,
    TResult? Function(CreateQuestionStateData data)? loadFullName,
    TResult? Function(CreateQuestionStateData data)? getAllQuestion,
  }) {
    return loadImage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateQuestionStateData data)? initial,
    TResult Function(CreateQuestionStateData data)? getError,
    TResult Function(CreateQuestionStateData data)? createQuestion,
    TResult Function(CreateQuestionStateData data)? loadImage,
    TResult Function(CreateQuestionStateData data)? loadFullName,
    TResult Function(CreateQuestionStateData data)? getAllQuestion,
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
    required TResult Function(GetError value) getError,
    required TResult Function(CreateQuestion value) createQuestion,
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
    TResult? Function(GetError value)? getError,
    TResult? Function(CreateQuestion value)? createQuestion,
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
    TResult Function(GetError value)? getError,
    TResult Function(CreateQuestion value)? createQuestion,
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

abstract class LoadImage implements CreateQuestionState {
  const factory LoadImage({required final CreateQuestionStateData data}) =
      _$LoadImageImpl;

  @override
  CreateQuestionStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$LoadImageImplCopyWith<_$LoadImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFullNameImplCopyWith<$Res>
    implements $CreateQuestionStateCopyWith<$Res> {
  factory _$$LoadFullNameImplCopyWith(
          _$LoadFullNameImpl value, $Res Function(_$LoadFullNameImpl) then) =
      __$$LoadFullNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateQuestionStateData data});

  @override
  $CreateQuestionStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadFullNameImplCopyWithImpl<$Res>
    extends _$CreateQuestionStateCopyWithImpl<$Res, _$LoadFullNameImpl>
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
              as CreateQuestionStateData,
    ));
  }
}

/// @nodoc

class _$LoadFullNameImpl implements LoadFullName {
  const _$LoadFullNameImpl({required this.data});

  @override
  final CreateQuestionStateData data;

  @override
  String toString() {
    return 'CreateQuestionState.loadFullName(data: $data)';
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
    required TResult Function(CreateQuestionStateData data) initial,
    required TResult Function(CreateQuestionStateData data) getError,
    required TResult Function(CreateQuestionStateData data) createQuestion,
    required TResult Function(CreateQuestionStateData data) loadImage,
    required TResult Function(CreateQuestionStateData data) loadFullName,
    required TResult Function(CreateQuestionStateData data) getAllQuestion,
  }) {
    return loadFullName(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateQuestionStateData data)? initial,
    TResult? Function(CreateQuestionStateData data)? getError,
    TResult? Function(CreateQuestionStateData data)? createQuestion,
    TResult? Function(CreateQuestionStateData data)? loadImage,
    TResult? Function(CreateQuestionStateData data)? loadFullName,
    TResult? Function(CreateQuestionStateData data)? getAllQuestion,
  }) {
    return loadFullName?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateQuestionStateData data)? initial,
    TResult Function(CreateQuestionStateData data)? getError,
    TResult Function(CreateQuestionStateData data)? createQuestion,
    TResult Function(CreateQuestionStateData data)? loadImage,
    TResult Function(CreateQuestionStateData data)? loadFullName,
    TResult Function(CreateQuestionStateData data)? getAllQuestion,
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
    required TResult Function(GetError value) getError,
    required TResult Function(CreateQuestion value) createQuestion,
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
    TResult? Function(GetError value)? getError,
    TResult? Function(CreateQuestion value)? createQuestion,
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
    TResult Function(GetError value)? getError,
    TResult Function(CreateQuestion value)? createQuestion,
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

abstract class LoadFullName implements CreateQuestionState {
  const factory LoadFullName({required final CreateQuestionStateData data}) =
      _$LoadFullNameImpl;

  @override
  CreateQuestionStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$LoadFullNameImplCopyWith<_$LoadFullNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllQuestionImplCopyWith<$Res>
    implements $CreateQuestionStateCopyWith<$Res> {
  factory _$$GetAllQuestionImplCopyWith(_$GetAllQuestionImpl value,
          $Res Function(_$GetAllQuestionImpl) then) =
      __$$GetAllQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateQuestionStateData data});

  @override
  $CreateQuestionStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetAllQuestionImplCopyWithImpl<$Res>
    extends _$CreateQuestionStateCopyWithImpl<$Res, _$GetAllQuestionImpl>
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
              as CreateQuestionStateData,
    ));
  }
}

/// @nodoc

class _$GetAllQuestionImpl implements GetAllQuestion {
  const _$GetAllQuestionImpl({required this.data});

  @override
  final CreateQuestionStateData data;

  @override
  String toString() {
    return 'CreateQuestionState.getAllQuestion(data: $data)';
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
    required TResult Function(CreateQuestionStateData data) initial,
    required TResult Function(CreateQuestionStateData data) getError,
    required TResult Function(CreateQuestionStateData data) createQuestion,
    required TResult Function(CreateQuestionStateData data) loadImage,
    required TResult Function(CreateQuestionStateData data) loadFullName,
    required TResult Function(CreateQuestionStateData data) getAllQuestion,
  }) {
    return getAllQuestion(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateQuestionStateData data)? initial,
    TResult? Function(CreateQuestionStateData data)? getError,
    TResult? Function(CreateQuestionStateData data)? createQuestion,
    TResult? Function(CreateQuestionStateData data)? loadImage,
    TResult? Function(CreateQuestionStateData data)? loadFullName,
    TResult? Function(CreateQuestionStateData data)? getAllQuestion,
  }) {
    return getAllQuestion?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateQuestionStateData data)? initial,
    TResult Function(CreateQuestionStateData data)? getError,
    TResult Function(CreateQuestionStateData data)? createQuestion,
    TResult Function(CreateQuestionStateData data)? loadImage,
    TResult Function(CreateQuestionStateData data)? loadFullName,
    TResult Function(CreateQuestionStateData data)? getAllQuestion,
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
    required TResult Function(GetError value) getError,
    required TResult Function(CreateQuestion value) createQuestion,
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
    TResult? Function(GetError value)? getError,
    TResult? Function(CreateQuestion value)? createQuestion,
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
    TResult Function(GetError value)? getError,
    TResult Function(CreateQuestion value)? createQuestion,
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

abstract class GetAllQuestion implements CreateQuestionState {
  const factory GetAllQuestion({required final CreateQuestionStateData data}) =
      _$GetAllQuestionImpl;

  @override
  CreateQuestionStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetAllQuestionImplCopyWith<_$GetAllQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
