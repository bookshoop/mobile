// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pagination<T> _$PaginationFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  switch (json['runtimeType']) {
    case 'data':
      return PaginationData<T>.fromJson(json, fromJsonT);
    case 'loading':
      return PaginationLoading<T>.fromJson(json, fromJsonT);
    case 'error':
      return PaginationError<T>.fromJson(json, fromJsonT);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Pagination',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Pagination<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> content, bool hasMore) data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> content, bool hasMore)? data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> content, bool hasMore)? data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaginationData<T> value) data,
    required TResult Function(PaginationLoading<T> value) loading,
    required TResult Function(PaginationError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaginationData<T> value)? data,
    TResult? Function(PaginationLoading<T> value)? loading,
    TResult? Function(PaginationError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaginationData<T> value)? data,
    TResult Function(PaginationLoading<T> value)? loading,
    TResult Function(PaginationError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<T, $Res> {
  factory $PaginationCopyWith(
          Pagination<T> value, $Res Function(Pagination<T>) then) =
      _$PaginationCopyWithImpl<T, $Res, Pagination<T>>;
}

/// @nodoc
class _$PaginationCopyWithImpl<T, $Res, $Val extends Pagination<T>>
    implements $PaginationCopyWith<T, $Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PaginationDataImplCopyWith<T, $Res> {
  factory _$$PaginationDataImplCopyWith(_$PaginationDataImpl<T> value,
          $Res Function(_$PaginationDataImpl<T>) then) =
      __$$PaginationDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> content, bool hasMore});
}

/// @nodoc
class __$$PaginationDataImplCopyWithImpl<T, $Res>
    extends _$PaginationCopyWithImpl<T, $Res, _$PaginationDataImpl<T>>
    implements _$$PaginationDataImplCopyWith<T, $Res> {
  __$$PaginationDataImplCopyWithImpl(_$PaginationDataImpl<T> _value,
      $Res Function(_$PaginationDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? hasMore = null,
  }) {
    return _then(_$PaginationDataImpl<T>(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PaginationDataImpl<T> implements PaginationData<T> {
  const _$PaginationDataImpl(
      {required final List<T> content,
      required this.hasMore,
      final String? $type})
      : _content = content,
        $type = $type ?? 'data';

  factory _$PaginationDataImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PaginationDataImplFromJson(json, fromJsonT);

  final List<T> _content;
  @override
  List<T> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final bool hasMore;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Pagination<$T>.data(content: $content, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationDataImpl<T> &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_content), hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationDataImplCopyWith<T, _$PaginationDataImpl<T>> get copyWith =>
      __$$PaginationDataImplCopyWithImpl<T, _$PaginationDataImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> content, bool hasMore) data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return data(content, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> content, bool hasMore)? data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return data?.call(content, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> content, bool hasMore)? data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(content, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaginationData<T> value) data,
    required TResult Function(PaginationLoading<T> value) loading,
    required TResult Function(PaginationError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaginationData<T> value)? data,
    TResult? Function(PaginationLoading<T> value)? loading,
    TResult? Function(PaginationError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaginationData<T> value)? data,
    TResult Function(PaginationLoading<T> value)? loading,
    TResult Function(PaginationError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PaginationDataImplToJson<T>(this, toJsonT);
  }
}

abstract class PaginationData<T> implements Pagination<T> {
  const factory PaginationData(
      {required final List<T> content,
      required final bool hasMore}) = _$PaginationDataImpl<T>;

  factory PaginationData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PaginationDataImpl<T>.fromJson;

  List<T> get content;
  bool get hasMore;
  @JsonKey(ignore: true)
  _$$PaginationDataImplCopyWith<T, _$PaginationDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginationLoadingImplCopyWith<T, $Res> {
  factory _$$PaginationLoadingImplCopyWith(_$PaginationLoadingImpl<T> value,
          $Res Function(_$PaginationLoadingImpl<T>) then) =
      __$$PaginationLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PaginationLoadingImplCopyWithImpl<T, $Res>
    extends _$PaginationCopyWithImpl<T, $Res, _$PaginationLoadingImpl<T>>
    implements _$$PaginationLoadingImplCopyWith<T, $Res> {
  __$$PaginationLoadingImplCopyWithImpl(_$PaginationLoadingImpl<T> _value,
      $Res Function(_$PaginationLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PaginationLoadingImpl<T> implements PaginationLoading<T> {
  const _$PaginationLoadingImpl({final String? $type})
      : $type = $type ?? 'loading';

  factory _$PaginationLoadingImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PaginationLoadingImplFromJson(json, fromJsonT);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Pagination<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationLoadingImpl<T>);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> content, bool hasMore) data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> content, bool hasMore)? data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> content, bool hasMore)? data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaginationData<T> value) data,
    required TResult Function(PaginationLoading<T> value) loading,
    required TResult Function(PaginationError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaginationData<T> value)? data,
    TResult? Function(PaginationLoading<T> value)? loading,
    TResult? Function(PaginationError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaginationData<T> value)? data,
    TResult Function(PaginationLoading<T> value)? loading,
    TResult Function(PaginationError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PaginationLoadingImplToJson<T>(this, toJsonT);
  }
}

abstract class PaginationLoading<T> implements Pagination<T> {
  const factory PaginationLoading() = _$PaginationLoadingImpl<T>;

  factory PaginationLoading.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PaginationLoadingImpl<T>.fromJson;
}

/// @nodoc
abstract class _$$PaginationErrorImplCopyWith<T, $Res> {
  factory _$$PaginationErrorImplCopyWith(_$PaginationErrorImpl<T> value,
          $Res Function(_$PaginationErrorImpl<T>) then) =
      __$$PaginationErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PaginationErrorImplCopyWithImpl<T, $Res>
    extends _$PaginationCopyWithImpl<T, $Res, _$PaginationErrorImpl<T>>
    implements _$$PaginationErrorImplCopyWith<T, $Res> {
  __$$PaginationErrorImplCopyWithImpl(_$PaginationErrorImpl<T> _value,
      $Res Function(_$PaginationErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PaginationErrorImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PaginationErrorImpl<T> implements PaginationError<T> {
  const _$PaginationErrorImpl({required this.message, final String? $type})
      : $type = $type ?? 'error';

  factory _$PaginationErrorImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PaginationErrorImplFromJson(json, fromJsonT);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Pagination<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationErrorImplCopyWith<T, _$PaginationErrorImpl<T>> get copyWith =>
      __$$PaginationErrorImplCopyWithImpl<T, _$PaginationErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> content, bool hasMore) data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> content, bool hasMore)? data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> content, bool hasMore)? data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaginationData<T> value) data,
    required TResult Function(PaginationLoading<T> value) loading,
    required TResult Function(PaginationError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaginationData<T> value)? data,
    TResult? Function(PaginationLoading<T> value)? loading,
    TResult? Function(PaginationError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaginationData<T> value)? data,
    TResult Function(PaginationLoading<T> value)? loading,
    TResult Function(PaginationError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PaginationErrorImplToJson<T>(this, toJsonT);
  }
}

abstract class PaginationError<T> implements Pagination<T> {
  const factory PaginationError({required final String message}) =
      _$PaginationErrorImpl<T>;

  factory PaginationError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PaginationErrorImpl<T>.fromJson;

  String get message;
  @JsonKey(ignore: true)
  _$$PaginationErrorImplCopyWith<T, _$PaginationErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
