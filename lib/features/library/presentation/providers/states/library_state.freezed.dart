// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LibraryState {
  String get searchValue => throw _privateConstructorUsedError;
  List<Library> get library => throw _privateConstructorUsedError;
  List<BookCategory> get category => throw _privateConstructorUsedError;
  List<Library> get allLibrary => throw _privateConstructorUsedError;
  List<BookCategory> get allCategory => throw _privateConstructorUsedError;
  Pagination<LibraryBook> get libraryBooks =>
      throw _privateConstructorUsedError;
  bool get manageMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LibraryStateCopyWith<LibraryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryStateCopyWith<$Res> {
  factory $LibraryStateCopyWith(
          LibraryState value, $Res Function(LibraryState) then) =
      _$LibraryStateCopyWithImpl<$Res, LibraryState>;
  @useResult
  $Res call(
      {String searchValue,
      List<Library> library,
      List<BookCategory> category,
      List<Library> allLibrary,
      List<BookCategory> allCategory,
      Pagination<LibraryBook> libraryBooks,
      bool manageMode});

  $PaginationCopyWith<LibraryBook, $Res> get libraryBooks;
}

/// @nodoc
class _$LibraryStateCopyWithImpl<$Res, $Val extends LibraryState>
    implements $LibraryStateCopyWith<$Res> {
  _$LibraryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchValue = null,
    Object? library = null,
    Object? category = null,
    Object? allLibrary = null,
    Object? allCategory = null,
    Object? libraryBooks = null,
    Object? manageMode = null,
  }) {
    return _then(_value.copyWith(
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
      library: null == library
          ? _value.library
          : library // ignore: cast_nullable_to_non_nullable
              as List<Library>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<BookCategory>,
      allLibrary: null == allLibrary
          ? _value.allLibrary
          : allLibrary // ignore: cast_nullable_to_non_nullable
              as List<Library>,
      allCategory: null == allCategory
          ? _value.allCategory
          : allCategory // ignore: cast_nullable_to_non_nullable
              as List<BookCategory>,
      libraryBooks: null == libraryBooks
          ? _value.libraryBooks
          : libraryBooks // ignore: cast_nullable_to_non_nullable
              as Pagination<LibraryBook>,
      manageMode: null == manageMode
          ? _value.manageMode
          : manageMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<LibraryBook, $Res> get libraryBooks {
    return $PaginationCopyWith<LibraryBook, $Res>(_value.libraryBooks, (value) {
      return _then(_value.copyWith(libraryBooks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LibraryStateImplCopyWith<$Res>
    implements $LibraryStateCopyWith<$Res> {
  factory _$$LibraryStateImplCopyWith(
          _$LibraryStateImpl value, $Res Function(_$LibraryStateImpl) then) =
      __$$LibraryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String searchValue,
      List<Library> library,
      List<BookCategory> category,
      List<Library> allLibrary,
      List<BookCategory> allCategory,
      Pagination<LibraryBook> libraryBooks,
      bool manageMode});

  @override
  $PaginationCopyWith<LibraryBook, $Res> get libraryBooks;
}

/// @nodoc
class __$$LibraryStateImplCopyWithImpl<$Res>
    extends _$LibraryStateCopyWithImpl<$Res, _$LibraryStateImpl>
    implements _$$LibraryStateImplCopyWith<$Res> {
  __$$LibraryStateImplCopyWithImpl(
      _$LibraryStateImpl _value, $Res Function(_$LibraryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchValue = null,
    Object? library = null,
    Object? category = null,
    Object? allLibrary = null,
    Object? allCategory = null,
    Object? libraryBooks = null,
    Object? manageMode = null,
  }) {
    return _then(_$LibraryStateImpl(
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
      library: null == library
          ? _value._library
          : library // ignore: cast_nullable_to_non_nullable
              as List<Library>,
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<BookCategory>,
      allLibrary: null == allLibrary
          ? _value._allLibrary
          : allLibrary // ignore: cast_nullable_to_non_nullable
              as List<Library>,
      allCategory: null == allCategory
          ? _value._allCategory
          : allCategory // ignore: cast_nullable_to_non_nullable
              as List<BookCategory>,
      libraryBooks: null == libraryBooks
          ? _value.libraryBooks
          : libraryBooks // ignore: cast_nullable_to_non_nullable
              as Pagination<LibraryBook>,
      manageMode: null == manageMode
          ? _value.manageMode
          : manageMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LibraryStateImpl extends _LibraryState {
  const _$LibraryStateImpl(
      {this.searchValue = '',
      final List<Library> library = const [],
      final List<BookCategory> category = const [],
      final List<Library> allLibrary = const [],
      final List<BookCategory> allCategory = const [],
      this.libraryBooks = const Pagination.loading(),
      this.manageMode = false})
      : _library = library,
        _category = category,
        _allLibrary = allLibrary,
        _allCategory = allCategory,
        super._();

  @override
  @JsonKey()
  final String searchValue;
  final List<Library> _library;
  @override
  @JsonKey()
  List<Library> get library {
    if (_library is EqualUnmodifiableListView) return _library;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_library);
  }

  final List<BookCategory> _category;
  @override
  @JsonKey()
  List<BookCategory> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  final List<Library> _allLibrary;
  @override
  @JsonKey()
  List<Library> get allLibrary {
    if (_allLibrary is EqualUnmodifiableListView) return _allLibrary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allLibrary);
  }

  final List<BookCategory> _allCategory;
  @override
  @JsonKey()
  List<BookCategory> get allCategory {
    if (_allCategory is EqualUnmodifiableListView) return _allCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCategory);
  }

  @override
  @JsonKey()
  final Pagination<LibraryBook> libraryBooks;
  @override
  @JsonKey()
  final bool manageMode;

  @override
  String toString() {
    return 'LibraryState(searchValue: $searchValue, library: $library, category: $category, allLibrary: $allLibrary, allCategory: $allCategory, libraryBooks: $libraryBooks, manageMode: $manageMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryStateImpl &&
            (identical(other.searchValue, searchValue) ||
                other.searchValue == searchValue) &&
            const DeepCollectionEquality().equals(other._library, _library) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality()
                .equals(other._allLibrary, _allLibrary) &&
            const DeepCollectionEquality()
                .equals(other._allCategory, _allCategory) &&
            (identical(other.libraryBooks, libraryBooks) ||
                other.libraryBooks == libraryBooks) &&
            (identical(other.manageMode, manageMode) ||
                other.manageMode == manageMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchValue,
      const DeepCollectionEquality().hash(_library),
      const DeepCollectionEquality().hash(_category),
      const DeepCollectionEquality().hash(_allLibrary),
      const DeepCollectionEquality().hash(_allCategory),
      libraryBooks,
      manageMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryStateImplCopyWith<_$LibraryStateImpl> get copyWith =>
      __$$LibraryStateImplCopyWithImpl<_$LibraryStateImpl>(this, _$identity);
}

abstract class _LibraryState extends LibraryState {
  const factory _LibraryState(
      {final String searchValue,
      final List<Library> library,
      final List<BookCategory> category,
      final List<Library> allLibrary,
      final List<BookCategory> allCategory,
      final Pagination<LibraryBook> libraryBooks,
      final bool manageMode}) = _$LibraryStateImpl;
  const _LibraryState._() : super._();

  @override
  String get searchValue;
  @override
  List<Library> get library;
  @override
  List<BookCategory> get category;
  @override
  List<Library> get allLibrary;
  @override
  List<BookCategory> get allCategory;
  @override
  Pagination<LibraryBook> get libraryBooks;
  @override
  bool get manageMode;
  @override
  @JsonKey(ignore: true)
  _$$LibraryStateImplCopyWith<_$LibraryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
