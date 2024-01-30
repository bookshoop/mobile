// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LibraryBook _$LibraryBookFromJson(Map<String, dynamic> json) {
  return _LibraryBook.fromJson(json);
}

/// @nodoc
mixin _$LibraryBook {
  int get id => throw _privateConstructorUsedError;
  Library get library => throw _privateConstructorUsedError;
  SimpleBook get book => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LibraryBookCopyWith<LibraryBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryBookCopyWith<$Res> {
  factory $LibraryBookCopyWith(
          LibraryBook value, $Res Function(LibraryBook) then) =
      _$LibraryBookCopyWithImpl<$Res, LibraryBook>;
  @useResult
  $Res call({int id, Library library, SimpleBook book});

  $LibraryCopyWith<$Res> get library;
  $SimpleBookCopyWith<$Res> get book;
}

/// @nodoc
class _$LibraryBookCopyWithImpl<$Res, $Val extends LibraryBook>
    implements $LibraryBookCopyWith<$Res> {
  _$LibraryBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? library = null,
    Object? book = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      library: null == library
          ? _value.library
          : library // ignore: cast_nullable_to_non_nullable
              as Library,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as SimpleBook,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LibraryCopyWith<$Res> get library {
    return $LibraryCopyWith<$Res>(_value.library, (value) {
      return _then(_value.copyWith(library: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleBookCopyWith<$Res> get book {
    return $SimpleBookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LibraryBookImplCopyWith<$Res>
    implements $LibraryBookCopyWith<$Res> {
  factory _$$LibraryBookImplCopyWith(
          _$LibraryBookImpl value, $Res Function(_$LibraryBookImpl) then) =
      __$$LibraryBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Library library, SimpleBook book});

  @override
  $LibraryCopyWith<$Res> get library;
  @override
  $SimpleBookCopyWith<$Res> get book;
}

/// @nodoc
class __$$LibraryBookImplCopyWithImpl<$Res>
    extends _$LibraryBookCopyWithImpl<$Res, _$LibraryBookImpl>
    implements _$$LibraryBookImplCopyWith<$Res> {
  __$$LibraryBookImplCopyWithImpl(
      _$LibraryBookImpl _value, $Res Function(_$LibraryBookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? library = null,
    Object? book = null,
  }) {
    return _then(_$LibraryBookImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      library: null == library
          ? _value.library
          : library // ignore: cast_nullable_to_non_nullable
              as Library,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as SimpleBook,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LibraryBookImpl implements _LibraryBook {
  const _$LibraryBookImpl(
      {required this.id, required this.library, required this.book});

  factory _$LibraryBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$LibraryBookImplFromJson(json);

  @override
  final int id;
  @override
  final Library library;
  @override
  final SimpleBook book;

  @override
  String toString() {
    return 'LibraryBook(id: $id, library: $library, book: $book)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryBookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.library, library) || other.library == library) &&
            (identical(other.book, book) || other.book == book));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, library, book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryBookImplCopyWith<_$LibraryBookImpl> get copyWith =>
      __$$LibraryBookImplCopyWithImpl<_$LibraryBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LibraryBookImplToJson(
      this,
    );
  }
}

abstract class _LibraryBook implements LibraryBook {
  const factory _LibraryBook(
      {required final int id,
      required final Library library,
      required final SimpleBook book}) = _$LibraryBookImpl;

  factory _LibraryBook.fromJson(Map<String, dynamic> json) =
      _$LibraryBookImpl.fromJson;

  @override
  int get id;
  @override
  Library get library;
  @override
  SimpleBook get book;
  @override
  @JsonKey(ignore: true)
  _$$LibraryBookImplCopyWith<_$LibraryBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
