// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apple_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppleUser {
  String get id => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppleUserCopyWith<AppleUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppleUserCopyWith<$Res> {
  factory $AppleUserCopyWith(AppleUser value, $Res Function(AppleUser) then) =
      _$AppleUserCopyWithImpl<$Res, AppleUser>;
  @useResult
  $Res call({String id, String nickName});
}

/// @nodoc
class _$AppleUserCopyWithImpl<$Res, $Val extends AppleUser>
    implements $AppleUserCopyWith<$Res> {
  _$AppleUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppleUserImplCopyWith<$Res>
    implements $AppleUserCopyWith<$Res> {
  factory _$$AppleUserImplCopyWith(
          _$AppleUserImpl value, $Res Function(_$AppleUserImpl) then) =
      __$$AppleUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String nickName});
}

/// @nodoc
class __$$AppleUserImplCopyWithImpl<$Res>
    extends _$AppleUserCopyWithImpl<$Res, _$AppleUserImpl>
    implements _$$AppleUserImplCopyWith<$Res> {
  __$$AppleUserImplCopyWithImpl(
      _$AppleUserImpl _value, $Res Function(_$AppleUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickName = null,
  }) {
    return _then(_$AppleUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppleUserImpl implements _AppleUser {
  const _$AppleUserImpl({required this.id, required this.nickName});

  @override
  final String id;
  @override
  final String nickName;

  @override
  String toString() {
    return 'AppleUser(id: $id, nickName: $nickName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppleUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, nickName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppleUserImplCopyWith<_$AppleUserImpl> get copyWith =>
      __$$AppleUserImplCopyWithImpl<_$AppleUserImpl>(this, _$identity);
}

abstract class _AppleUser implements AppleUser {
  const factory _AppleUser(
      {required final String id,
      required final String nickName}) = _$AppleUserImpl;

  @override
  String get id;
  @override
  String get nickName;
  @override
  @JsonKey(ignore: true)
  _$$AppleUserImplCopyWith<_$AppleUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
