// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SimpleBook _$SimpleBookFromJson(Map<String, dynamic> json) {
  return _SimpleBook.fromJson(json);
}

/// @nodoc
mixin _$SimpleBook {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get writer => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimpleBookCopyWith<SimpleBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleBookCopyWith<$Res> {
  factory $SimpleBookCopyWith(
          SimpleBook value, $Res Function(SimpleBook) then) =
      _$SimpleBookCopyWithImpl<$Res, SimpleBook>;
  @useResult
  $Res call({int id, String title, String writer, String? thumbnail});
}

/// @nodoc
class _$SimpleBookCopyWithImpl<$Res, $Val extends SimpleBook>
    implements $SimpleBookCopyWith<$Res> {
  _$SimpleBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? writer = null,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      writer: null == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimpleBookImplCopyWith<$Res>
    implements $SimpleBookCopyWith<$Res> {
  factory _$$SimpleBookImplCopyWith(
          _$SimpleBookImpl value, $Res Function(_$SimpleBookImpl) then) =
      __$$SimpleBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String writer, String? thumbnail});
}

/// @nodoc
class __$$SimpleBookImplCopyWithImpl<$Res>
    extends _$SimpleBookCopyWithImpl<$Res, _$SimpleBookImpl>
    implements _$$SimpleBookImplCopyWith<$Res> {
  __$$SimpleBookImplCopyWithImpl(
      _$SimpleBookImpl _value, $Res Function(_$SimpleBookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? writer = null,
    Object? thumbnail = freezed,
  }) {
    return _then(_$SimpleBookImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      writer: null == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimpleBookImpl implements _SimpleBook {
  const _$SimpleBookImpl(
      {required this.id,
      required this.title,
      required this.writer,
      this.thumbnail});

  factory _$SimpleBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimpleBookImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String writer;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'SimpleBook(id: $id, title: $title, writer: $writer, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleBookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.writer, writer) || other.writer == writer) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, writer, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleBookImplCopyWith<_$SimpleBookImpl> get copyWith =>
      __$$SimpleBookImplCopyWithImpl<_$SimpleBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimpleBookImplToJson(
      this,
    );
  }
}

abstract class _SimpleBook implements SimpleBook {
  const factory _SimpleBook(
      {required final int id,
      required final String title,
      required final String writer,
      final String? thumbnail}) = _$SimpleBookImpl;

  factory _SimpleBook.fromJson(Map<String, dynamic> json) =
      _$SimpleBookImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get writer;
  @override
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$SimpleBookImplCopyWith<_$SimpleBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
