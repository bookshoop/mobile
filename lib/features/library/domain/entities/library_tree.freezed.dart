// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_tree.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LibraryTree _$LibraryTreeFromJson(Map<String, dynamic> json) {
  return _LibraryTree.fromJson(json);
}

/// @nodoc
mixin _$LibraryTree {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<LibraryTree> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LibraryTreeCopyWith<LibraryTree> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryTreeCopyWith<$Res> {
  factory $LibraryTreeCopyWith(
          LibraryTree value, $Res Function(LibraryTree) then) =
      _$LibraryTreeCopyWithImpl<$Res, LibraryTree>;
  @useResult
  $Res call({int id, String name, List<LibraryTree> children});
}

/// @nodoc
class _$LibraryTreeCopyWithImpl<$Res, $Val extends LibraryTree>
    implements $LibraryTreeCopyWith<$Res> {
  _$LibraryTreeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? children = null,
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
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<LibraryTree>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibraryTreeImplCopyWith<$Res>
    implements $LibraryTreeCopyWith<$Res> {
  factory _$$LibraryTreeImplCopyWith(
          _$LibraryTreeImpl value, $Res Function(_$LibraryTreeImpl) then) =
      __$$LibraryTreeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<LibraryTree> children});
}

/// @nodoc
class __$$LibraryTreeImplCopyWithImpl<$Res>
    extends _$LibraryTreeCopyWithImpl<$Res, _$LibraryTreeImpl>
    implements _$$LibraryTreeImplCopyWith<$Res> {
  __$$LibraryTreeImplCopyWithImpl(
      _$LibraryTreeImpl _value, $Res Function(_$LibraryTreeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? children = null,
  }) {
    return _then(_$LibraryTreeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<LibraryTree>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LibraryTreeImpl implements _LibraryTree {
  const _$LibraryTreeImpl(
      {required this.id,
      required this.name,
      required final List<LibraryTree> children})
      : _children = children;

  factory _$LibraryTreeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LibraryTreeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<LibraryTree> _children;
  @override
  List<LibraryTree> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'LibraryTree(id: $id, name: $name, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryTreeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryTreeImplCopyWith<_$LibraryTreeImpl> get copyWith =>
      __$$LibraryTreeImplCopyWithImpl<_$LibraryTreeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LibraryTreeImplToJson(
      this,
    );
  }
}

abstract class _LibraryTree implements LibraryTree {
  const factory _LibraryTree(
      {required final int id,
      required final String name,
      required final List<LibraryTree> children}) = _$LibraryTreeImpl;

  factory _LibraryTree.fromJson(Map<String, dynamic> json) =
      _$LibraryTreeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<LibraryTree> get children;
  @override
  @JsonKey(ignore: true)
  _$$LibraryTreeImplCopyWith<_$LibraryTreeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
