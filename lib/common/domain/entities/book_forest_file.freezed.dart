// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_forest_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookForestFile _$BookForestFileFromJson(Map<String, dynamic> json) {
  return _BookForestFile.fromJson(json);
}

/// @nodoc
mixin _$BookForestFile {
  int get fileId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookForestFileCopyWith<BookForestFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookForestFileCopyWith<$Res> {
  factory $BookForestFileCopyWith(
          BookForestFile value, $Res Function(BookForestFile) then) =
      _$BookForestFileCopyWithImpl<$Res, BookForestFile>;
  @useResult
  $Res call({int fileId});
}

/// @nodoc
class _$BookForestFileCopyWithImpl<$Res, $Val extends BookForestFile>
    implements $BookForestFileCopyWith<$Res> {
  _$BookForestFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
  }) {
    return _then(_value.copyWith(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookForestFileImplCopyWith<$Res>
    implements $BookForestFileCopyWith<$Res> {
  factory _$$BookForestFileImplCopyWith(_$BookForestFileImpl value,
          $Res Function(_$BookForestFileImpl) then) =
      __$$BookForestFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int fileId});
}

/// @nodoc
class __$$BookForestFileImplCopyWithImpl<$Res>
    extends _$BookForestFileCopyWithImpl<$Res, _$BookForestFileImpl>
    implements _$$BookForestFileImplCopyWith<$Res> {
  __$$BookForestFileImplCopyWithImpl(
      _$BookForestFileImpl _value, $Res Function(_$BookForestFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
  }) {
    return _then(_$BookForestFileImpl(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookForestFileImpl implements _BookForestFile {
  const _$BookForestFileImpl({required this.fileId});

  factory _$BookForestFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookForestFileImplFromJson(json);

  @override
  final int fileId;

  @override
  String toString() {
    return 'BookForestFile(fileId: $fileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookForestFileImpl &&
            (identical(other.fileId, fileId) || other.fileId == fileId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookForestFileImplCopyWith<_$BookForestFileImpl> get copyWith =>
      __$$BookForestFileImplCopyWithImpl<_$BookForestFileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookForestFileImplToJson(
      this,
    );
  }
}

abstract class _BookForestFile implements BookForestFile {
  const factory _BookForestFile({required final int fileId}) =
      _$BookForestFileImpl;

  factory _BookForestFile.fromJson(Map<String, dynamic> json) =
      _$BookForestFileImpl.fromJson;

  @override
  int get fileId;
  @override
  @JsonKey(ignore: true)
  _$$BookForestFileImplCopyWith<_$BookForestFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
