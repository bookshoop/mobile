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
  String? get profile => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String get pushToken => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;
  List<int>? get likeGenre => throw _privateConstructorUsedError;
  int? get accessRouteId => throw _privateConstructorUsedError;
  int? get accessRoute => throw _privateConstructorUsedError;

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
      {String? profile,
      String nickname,
      String? phoneNumber,
      String pushToken,
      DateTime? birthday,
      List<int>? likeGenre,
      int? accessRouteId,
      int? accessRoute});
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
    Object? profile = freezed,
    Object? nickname = null,
    Object? phoneNumber = freezed,
    Object? pushToken = null,
    Object? birthday = freezed,
    Object? likeGenre = freezed,
    Object? accessRouteId = freezed,
    Object? accessRoute = freezed,
  }) {
    return _then(_value.copyWith(
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      pushToken: null == pushToken
          ? _value.pushToken
          : pushToken // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      likeGenre: freezed == likeGenre
          ? _value.likeGenre
          : likeGenre // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      accessRouteId: freezed == accessRouteId
          ? _value.accessRouteId
          : accessRouteId // ignore: cast_nullable_to_non_nullable
              as int?,
      accessRoute: freezed == accessRoute
          ? _value.accessRoute
          : accessRoute // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {String? profile,
      String nickname,
      String? phoneNumber,
      String pushToken,
      DateTime? birthday,
      List<int>? likeGenre,
      int? accessRouteId,
      int? accessRoute});
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
    Object? profile = freezed,
    Object? nickname = null,
    Object? phoneNumber = freezed,
    Object? pushToken = null,
    Object? birthday = freezed,
    Object? likeGenre = freezed,
    Object? accessRouteId = freezed,
    Object? accessRoute = freezed,
  }) {
    return _then(_$SignInDataImpl(
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      pushToken: null == pushToken
          ? _value.pushToken
          : pushToken // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      likeGenre: freezed == likeGenre
          ? _value._likeGenre
          : likeGenre // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      accessRouteId: freezed == accessRouteId
          ? _value.accessRouteId
          : accessRouteId // ignore: cast_nullable_to_non_nullable
              as int?,
      accessRoute: freezed == accessRoute
          ? _value.accessRoute
          : accessRoute // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInDataImpl implements _SignInData {
  const _$SignInDataImpl(
      {this.profile,
      required this.nickname,
      this.phoneNumber,
      required this.pushToken,
      this.birthday,
      final List<int>? likeGenre,
      this.accessRouteId,
      this.accessRoute})
      : _likeGenre = likeGenre;

  factory _$SignInDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInDataImplFromJson(json);

  @override
  final String? profile;
  @override
  final String nickname;
  @override
  final String? phoneNumber;
  @override
  final String pushToken;
  @override
  final DateTime? birthday;
  final List<int>? _likeGenre;
  @override
  List<int>? get likeGenre {
    final value = _likeGenre;
    if (value == null) return null;
    if (_likeGenre is EqualUnmodifiableListView) return _likeGenre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? accessRouteId;
  @override
  final int? accessRoute;

  @override
  String toString() {
    return 'SignInData(profile: $profile, nickname: $nickname, phoneNumber: $phoneNumber, pushToken: $pushToken, birthday: $birthday, likeGenre: $likeGenre, accessRouteId: $accessRouteId, accessRoute: $accessRoute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInDataImpl &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.pushToken, pushToken) ||
                other.pushToken == pushToken) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            const DeepCollectionEquality()
                .equals(other._likeGenre, _likeGenre) &&
            (identical(other.accessRouteId, accessRouteId) ||
                other.accessRouteId == accessRouteId) &&
            (identical(other.accessRoute, accessRoute) ||
                other.accessRoute == accessRoute));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      profile,
      nickname,
      phoneNumber,
      pushToken,
      birthday,
      const DeepCollectionEquality().hash(_likeGenre),
      accessRouteId,
      accessRoute);

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
      {final String? profile,
      required final String nickname,
      final String? phoneNumber,
      required final String pushToken,
      final DateTime? birthday,
      final List<int>? likeGenre,
      final int? accessRouteId,
      final int? accessRoute}) = _$SignInDataImpl;

  factory _SignInData.fromJson(Map<String, dynamic> json) =
      _$SignInDataImpl.fromJson;

  @override
  String? get profile;
  @override
  String get nickname;
  @override
  String? get phoneNumber;
  @override
  String get pushToken;
  @override
  DateTime? get birthday;
  @override
  List<int>? get likeGenre;
  @override
  int? get accessRouteId;
  @override
  int? get accessRoute;
  @override
  @JsonKey(ignore: true)
  _$$SignInDataImplCopyWith<_$SignInDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
