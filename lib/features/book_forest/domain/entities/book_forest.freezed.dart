// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_forest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookForest _$BookForestFromJson(Map<String, dynamic> json) {
  return _BookForest.fromJson(json);
}

/// @nodoc
mixin _$BookForest {
  int get id => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookForestCopyWith<BookForest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookForestCopyWith<$Res> {
  factory $BookForestCopyWith(
          BookForest value, $Res Function(BookForest) then) =
      _$BookForestCopyWithImpl<$Res, BookForest>;
  @useResult
  $Res call({int id, String thumbnail, String title});
}

/// @nodoc
class _$BookForestCopyWithImpl<$Res, $Val extends BookForest>
    implements $BookForestCopyWith<$Res> {
  _$BookForestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? thumbnail = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookForestImplCopyWith<$Res>
    implements $BookForestCopyWith<$Res> {
  factory _$$BookForestImplCopyWith(
          _$BookForestImpl value, $Res Function(_$BookForestImpl) then) =
      __$$BookForestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String thumbnail, String title});
}

/// @nodoc
class __$$BookForestImplCopyWithImpl<$Res>
    extends _$BookForestCopyWithImpl<$Res, _$BookForestImpl>
    implements _$$BookForestImplCopyWith<$Res> {
  __$$BookForestImplCopyWithImpl(
      _$BookForestImpl _value, $Res Function(_$BookForestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? thumbnail = null,
    Object? title = null,
  }) {
    return _then(_$BookForestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookForestImpl implements _BookForest {
  const _$BookForestImpl(
      {required this.id, required this.thumbnail, required this.title});

  factory _$BookForestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookForestImplFromJson(json);

  @override
  final int id;
  @override
  final String thumbnail;
  @override
  final String title;

  @override
  String toString() {
    return 'BookForest(id: $id, thumbnail: $thumbnail, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookForestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, thumbnail, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookForestImplCopyWith<_$BookForestImpl> get copyWith =>
      __$$BookForestImplCopyWithImpl<_$BookForestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookForestImplToJson(
      this,
    );
  }
}

abstract class _BookForest implements BookForest {
  const factory _BookForest(
      {required final int id,
      required final String thumbnail,
      required final String title}) = _$BookForestImpl;

  factory _BookForest.fromJson(Map<String, dynamic> json) =
      _$BookForestImpl.fromJson;

  @override
  int get id;
  @override
  String get thumbnail;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$BookForestImplCopyWith<_$BookForestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
