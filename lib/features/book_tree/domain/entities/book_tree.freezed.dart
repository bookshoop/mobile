// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_tree.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookTree _$BookTreeFromJson(Map<String, dynamic> json) {
  return _BookTree.fromJson(json);
}

/// @nodoc
mixin _$BookTree {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  bool get isLike => throw _privateConstructorUsedError;
  Book get book => throw _privateConstructorUsedError;
  DateTime get createDateTime => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookTreeCopyWith<BookTree> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookTreeCopyWith<$Res> {
  factory $BookTreeCopyWith(BookTree value, $Res Function(BookTree) then) =
      _$BookTreeCopyWithImpl<$Res, BookTree>;
  @useResult
  $Res call(
      {int id,
      String title,
      String content,
      int likes,
      bool isLike,
      Book book,
      DateTime createDateTime,
      User user});

  $BookCopyWith<$Res> get book;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$BookTreeCopyWithImpl<$Res, $Val extends BookTree>
    implements $BookTreeCopyWith<$Res> {
  _$BookTreeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? likes = null,
    Object? isLike = null,
    Object? book = null,
    Object? createDateTime = null,
    Object? user = null,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
      createDateTime: null == createDateTime
          ? _value.createDateTime
          : createDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCopyWith<$Res> get book {
    return $BookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookTreeImplCopyWith<$Res>
    implements $BookTreeCopyWith<$Res> {
  factory _$$BookTreeImplCopyWith(
          _$BookTreeImpl value, $Res Function(_$BookTreeImpl) then) =
      __$$BookTreeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String content,
      int likes,
      bool isLike,
      Book book,
      DateTime createDateTime,
      User user});

  @override
  $BookCopyWith<$Res> get book;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$BookTreeImplCopyWithImpl<$Res>
    extends _$BookTreeCopyWithImpl<$Res, _$BookTreeImpl>
    implements _$$BookTreeImplCopyWith<$Res> {
  __$$BookTreeImplCopyWithImpl(
      _$BookTreeImpl _value, $Res Function(_$BookTreeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? likes = null,
    Object? isLike = null,
    Object? book = null,
    Object? createDateTime = null,
    Object? user = null,
  }) {
    return _then(_$BookTreeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
      createDateTime: null == createDateTime
          ? _value.createDateTime
          : createDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookTreeImpl implements _BookTree {
  const _$BookTreeImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.likes,
      required this.isLike,
      required this.book,
      required this.createDateTime,
      required this.user});

  factory _$BookTreeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookTreeImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final int likes;
  @override
  final bool isLike;
  @override
  final Book book;
  @override
  final DateTime createDateTime;
  @override
  final User user;

  @override
  String toString() {
    return 'BookTree(id: $id, title: $title, content: $content, likes: $likes, isLike: $isLike, book: $book, createDateTime: $createDateTime, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookTreeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.isLike, isLike) || other.isLike == isLike) &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.createDateTime, createDateTime) ||
                other.createDateTime == createDateTime) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, likes,
      isLike, book, createDateTime, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookTreeImplCopyWith<_$BookTreeImpl> get copyWith =>
      __$$BookTreeImplCopyWithImpl<_$BookTreeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookTreeImplToJson(
      this,
    );
  }
}

abstract class _BookTree implements BookTree {
  const factory _BookTree(
      {required final int id,
      required final String title,
      required final String content,
      required final int likes,
      required final bool isLike,
      required final Book book,
      required final DateTime createDateTime,
      required final User user}) = _$BookTreeImpl;

  factory _BookTree.fromJson(Map<String, dynamic> json) =
      _$BookTreeImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  int get likes;
  @override
  bool get isLike;
  @override
  Book get book;
  @override
  DateTime get createDateTime;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$BookTreeImplCopyWith<_$BookTreeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
