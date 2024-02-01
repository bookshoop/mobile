// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookCategory _$BookCategoryFromJson(Map<String, dynamic> json) {
  return _BookCategory.fromJson(json);
}

/// @nodoc
mixin _$BookCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCategoryCopyWith<BookCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCategoryCopyWith<$Res> {
  factory $BookCategoryCopyWith(
          BookCategory value, $Res Function(BookCategory) then) =
      _$BookCategoryCopyWithImpl<$Res, BookCategory>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$BookCategoryCopyWithImpl<$Res, $Val extends BookCategory>
    implements $BookCategoryCopyWith<$Res> {
  _$BookCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookCategoryImplCopyWith<$Res>
    implements $BookCategoryCopyWith<$Res> {
  factory _$$BookCategoryImplCopyWith(
          _$BookCategoryImpl value, $Res Function(_$BookCategoryImpl) then) =
      __$$BookCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$BookCategoryImplCopyWithImpl<$Res>
    extends _$BookCategoryCopyWithImpl<$Res, _$BookCategoryImpl>
    implements _$$BookCategoryImplCopyWith<$Res> {
  __$$BookCategoryImplCopyWithImpl(
      _$BookCategoryImpl _value, $Res Function(_$BookCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$BookCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookCategoryImpl implements _BookCategory {
  const _$BookCategoryImpl({required this.id, required this.name});

  factory _$BookCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookCategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'BookCategory(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookCategoryImplCopyWith<_$BookCategoryImpl> get copyWith =>
      __$$BookCategoryImplCopyWithImpl<_$BookCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookCategoryImplToJson(
      this,
    );
  }
}

abstract class _BookCategory implements BookCategory {
  const factory _BookCategory(
      {required final int id, required final String name}) = _$BookCategoryImpl;

  factory _BookCategory.fromJson(Map<String, dynamic> json) =
      _$BookCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$BookCategoryImplCopyWith<_$BookCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
