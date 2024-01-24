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
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  String get extention => throw _privateConstructorUsedError;

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
  $Res call(
      {int fileId, String path, @JsonKey(name: 'extension') String extention});
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
    Object? path = null,
    Object? extention = null,
  }) {
    return _then(_value.copyWith(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      extention: null == extention
          ? _value.extention
          : extention // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call(
      {int fileId, String path, @JsonKey(name: 'extension') String extention});
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
    Object? path = null,
    Object? extention = null,
  }) {
    return _then(_$BookForestFileImpl(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      extention: null == extention
          ? _value.extention
          : extention // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookForestFileImpl implements _BookForestFile {
  const _$BookForestFileImpl(
      {required this.fileId,
      required this.path,
      @JsonKey(name: 'extension') required this.extention});

  factory _$BookForestFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookForestFileImplFromJson(json);

  @override
  final int fileId;
  @override
  final String path;
  @override
  @JsonKey(name: 'extension')
  final String extention;

  @override
  String toString() {
    return 'BookForestFile(fileId: $fileId, path: $path, extention: $extention)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookForestFileImpl &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.extention, extention) ||
                other.extention == extention));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileId, path, extention);

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
  const factory _BookForestFile(
          {required final int fileId,
          required final String path,
          @JsonKey(name: 'extension') required final String extention}) =
      _$BookForestFileImpl;

  factory _BookForestFile.fromJson(Map<String, dynamic> json) =
      _$BookForestFileImpl.fromJson;

  @override
  int get fileId;
  @override
  String get path;
  @override
  @JsonKey(name: 'extension')
  String get extention;
  @override
  @JsonKey(ignore: true)
  _$$BookForestFileImplCopyWith<_$BookForestFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
