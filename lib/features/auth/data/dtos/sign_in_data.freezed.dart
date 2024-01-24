// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInData _$SignInDataFromJson(Map<String, dynamic> json) {
  return _SignInData.fromJson(json);
}

/// @nodoc
mixin _$SignInData {
  String get socialId => throw _privateConstructorUsedError;
  String get socialProvider => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get pushToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInDataCopyWith<SignInData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInDataCopyWith<$Res> {
  factory $SignInDataCopyWith(
          SignInData value, $Res Function(SignInData) then) =
      _$SignInDataCopyWithImpl<$Res, SignInData>;
  @useResult
  $Res call(
      {String socialId,
      String socialProvider,
      DateTime? birthday,
      String? mobile,
      String? pushToken});
}

/// @nodoc
class _$SignInDataCopyWithImpl<$Res, $Val extends SignInData>
    implements $SignInDataCopyWith<$Res> {
  _$SignInDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socialId = null,
    Object? socialProvider = null,
    Object? birthday = freezed,
    Object? mobile = freezed,
    Object? pushToken = freezed,
  }) {
    return _then(_value.copyWith(
      socialId: null == socialId
          ? _value.socialId
          : socialId // ignore: cast_nullable_to_non_nullable
              as String,
      socialProvider: null == socialProvider
          ? _value.socialProvider
          : socialProvider // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      pushToken: freezed == pushToken
          ? _value.pushToken
          : pushToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInDataImplCopyWith<$Res>
    implements $SignInDataCopyWith<$Res> {
  factory _$$SignInDataImplCopyWith(
          _$SignInDataImpl value, $Res Function(_$SignInDataImpl) then) =
      __$$SignInDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String socialId,
      String socialProvider,
      DateTime? birthday,
      String? mobile,
      String? pushToken});
}

/// @nodoc
class __$$SignInDataImplCopyWithImpl<$Res>
    extends _$SignInDataCopyWithImpl<$Res, _$SignInDataImpl>
    implements _$$SignInDataImplCopyWith<$Res> {
  __$$SignInDataImplCopyWithImpl(
      _$SignInDataImpl _value, $Res Function(_$SignInDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socialId = null,
    Object? socialProvider = null,
    Object? birthday = freezed,
    Object? mobile = freezed,
    Object? pushToken = freezed,
  }) {
    return _then(_$SignInDataImpl(
      socialId: null == socialId
          ? _value.socialId
          : socialId // ignore: cast_nullable_to_non_nullable
              as String,
      socialProvider: null == socialProvider
          ? _value.socialProvider
          : socialProvider // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      pushToken: freezed == pushToken
          ? _value.pushToken
          : pushToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInDataImpl implements _SignInData {
  const _$SignInDataImpl(
      {required this.socialId,
      required this.socialProvider,
      this.birthday,
      this.mobile,
      this.pushToken});

  factory _$SignInDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInDataImplFromJson(json);

  @override
  final String socialId;
  @override
  final String socialProvider;
  @override
  final DateTime? birthday;
  @override
  final String? mobile;
  @override
  final String? pushToken;

  @override
  String toString() {
    return 'SignInData(socialId: $socialId, socialProvider: $socialProvider, birthday: $birthday, mobile: $mobile, pushToken: $pushToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInDataImpl &&
            (identical(other.socialId, socialId) ||
                other.socialId == socialId) &&
            (identical(other.socialProvider, socialProvider) ||
                other.socialProvider == socialProvider) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.pushToken, pushToken) ||
                other.pushToken == pushToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, socialId, socialProvider, birthday, mobile, pushToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInDataImplCopyWith<_$SignInDataImpl> get copyWith =>
      __$$SignInDataImplCopyWithImpl<_$SignInDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInDataImplToJson(
      this,
    );
  }
}

abstract class _SignInData implements SignInData {
  const factory _SignInData(
      {required final String socialId,
      required final String socialProvider,
      final DateTime? birthday,
      final String? mobile,
      final String? pushToken}) = _$SignInDataImpl;

  factory _SignInData.fromJson(Map<String, dynamic> json) =
      _$SignInDataImpl.fromJson;

  @override
  String get socialId;
  @override
  String get socialProvider;
  @override
  DateTime? get birthday;
  @override
  String? get mobile;
  @override
  String? get pushToken;
  @override
  @JsonKey(ignore: true)
  _$$SignInDataImplCopyWith<_$SignInDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
