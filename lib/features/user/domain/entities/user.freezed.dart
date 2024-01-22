// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'login':
      return Login.fromJson(json);
    case 'logout':
      return Logout.fromJson(json);
    case 'loggingIn':
      return LogginIn.fromJson(json);
    case 'simpleWriter':
      return SimpleWriter.fromJson(json);
    case 'list':
      return UserList.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'User',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$User {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)
        login,
    required TResult Function() logout,
    required TResult Function() loggingIn,
    required TResult Function(int id, String username) simpleWriter,
    required TResult Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)
        list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)?
        login,
    TResult? Function()? logout,
    TResult? Function()? loggingIn,
    TResult? Function(int id, String username)? simpleWriter,
    TResult? Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)?
        list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)?
        login,
    TResult Function()? logout,
    TResult Function()? loggingIn,
    TResult Function(int id, String username)? simpleWriter,
    TResult Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)?
        list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Logout value) logout,
    required TResult Function(LogginIn value) loggingIn,
    required TResult Function(SimpleWriter value) simpleWriter,
    required TResult Function(UserList value) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Logout value)? logout,
    TResult? Function(LogginIn value)? loggingIn,
    TResult? Function(SimpleWriter value)? simpleWriter,
    TResult? Function(UserList value)? list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Logout value)? logout,
    TResult Function(LogginIn value)? loggingIn,
    TResult Function(SimpleWriter value)? simpleWriter,
    TResult Function(UserList value)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String username,
      String? phoneNumber,
      DateTime? birthday,
      BookForestFile? profile});

  $BookForestFileCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? phoneNumber = freezed,
    Object? birthday = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$LoginImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as BookForestFile?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BookForestFileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $BookForestFileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginImpl implements Login {
  const _$LoginImpl(
      {required this.id,
      required this.username,
      this.phoneNumber,
      this.birthday,
      this.profile,
      final String? $type})
      : $type = $type ?? 'login';

  factory _$LoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginImplFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String? phoneNumber;
  @override
  final DateTime? birthday;
  @override
  final BookForestFile? profile;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.login(id: $id, username: $username, phoneNumber: $phoneNumber, birthday: $birthday, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, phoneNumber, birthday, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)
        login,
    required TResult Function() logout,
    required TResult Function() loggingIn,
    required TResult Function(int id, String username) simpleWriter,
    required TResult Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)
        list,
  }) {
    return login(id, username, phoneNumber, birthday, profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)?
        login,
    TResult? Function()? logout,
    TResult? Function()? loggingIn,
    TResult? Function(int id, String username)? simpleWriter,
    TResult? Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)?
        list,
  }) {
    return login?.call(id, username, phoneNumber, birthday, profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)?
        login,
    TResult Function()? logout,
    TResult Function()? loggingIn,
    TResult Function(int id, String username)? simpleWriter,
    TResult Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)?
        list,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(id, username, phoneNumber, birthday, profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Logout value) logout,
    required TResult Function(LogginIn value) loggingIn,
    required TResult Function(SimpleWriter value) simpleWriter,
    required TResult Function(UserList value) list,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Logout value)? logout,
    TResult? Function(LogginIn value)? loggingIn,
    TResult? Function(SimpleWriter value)? simpleWriter,
    TResult? Function(UserList value)? list,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Logout value)? logout,
    TResult Function(LogginIn value)? loggingIn,
    TResult Function(SimpleWriter value)? simpleWriter,
    TResult Function(UserList value)? list,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginImplToJson(
      this,
    );
  }
}

abstract class Login implements User {
  const factory Login(
      {required final int id,
      required final String username,
      final String? phoneNumber,
      final DateTime? birthday,
      final BookForestFile? profile}) = _$LoginImpl;

  factory Login.fromJson(Map<String, dynamic> json) = _$LoginImpl.fromJson;

  int get id;
  String get username;
  String? get phoneNumber;
  DateTime? get birthday;
  BookForestFile? get profile;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LogoutImpl implements Logout {
  const _$LogoutImpl({final String? $type}) : $type = $type ?? 'logout';

  factory _$LogoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogoutImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)
        login,
    required TResult Function() logout,
    required TResult Function() loggingIn,
    required TResult Function(int id, String username) simpleWriter,
    required TResult Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)
        list,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)?
        login,
    TResult? Function()? logout,
    TResult? Function()? loggingIn,
    TResult? Function(int id, String username)? simpleWriter,
    TResult? Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)?
        list,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)?
        login,
    TResult Function()? logout,
    TResult Function()? loggingIn,
    TResult Function(int id, String username)? simpleWriter,
    TResult Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)?
        list,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Logout value) logout,
    required TResult Function(LogginIn value) loggingIn,
    required TResult Function(SimpleWriter value) simpleWriter,
    required TResult Function(UserList value) list,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Logout value)? logout,
    TResult? Function(LogginIn value)? loggingIn,
    TResult? Function(SimpleWriter value)? simpleWriter,
    TResult? Function(UserList value)? list,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Logout value)? logout,
    TResult Function(LogginIn value)? loggingIn,
    TResult Function(SimpleWriter value)? simpleWriter,
    TResult Function(UserList value)? list,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LogoutImplToJson(
      this,
    );
  }
}

abstract class Logout implements User {
  const factory Logout() = _$LogoutImpl;

  factory Logout.fromJson(Map<String, dynamic> json) = _$LogoutImpl.fromJson;
}

/// @nodoc
abstract class _$$LogginInImplCopyWith<$Res> {
  factory _$$LogginInImplCopyWith(
          _$LogginInImpl value, $Res Function(_$LogginInImpl) then) =
      __$$LogginInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogginInImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$LogginInImpl>
    implements _$$LogginInImplCopyWith<$Res> {
  __$$LogginInImplCopyWithImpl(
      _$LogginInImpl _value, $Res Function(_$LogginInImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LogginInImpl implements LogginIn {
  const _$LogginInImpl({final String? $type}) : $type = $type ?? 'loggingIn';

  factory _$LogginInImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogginInImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.loggingIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogginInImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)
        login,
    required TResult Function() logout,
    required TResult Function() loggingIn,
    required TResult Function(int id, String username) simpleWriter,
    required TResult Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)
        list,
  }) {
    return loggingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)?
        login,
    TResult? Function()? logout,
    TResult? Function()? loggingIn,
    TResult? Function(int id, String username)? simpleWriter,
    TResult? Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)?
        list,
  }) {
    return loggingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)?
        login,
    TResult Function()? logout,
    TResult Function()? loggingIn,
    TResult Function(int id, String username)? simpleWriter,
    TResult Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)?
        list,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Logout value) logout,
    required TResult Function(LogginIn value) loggingIn,
    required TResult Function(SimpleWriter value) simpleWriter,
    required TResult Function(UserList value) list,
  }) {
    return loggingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Logout value)? logout,
    TResult? Function(LogginIn value)? loggingIn,
    TResult? Function(SimpleWriter value)? simpleWriter,
    TResult? Function(UserList value)? list,
  }) {
    return loggingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Logout value)? logout,
    TResult Function(LogginIn value)? loggingIn,
    TResult Function(SimpleWriter value)? simpleWriter,
    TResult Function(UserList value)? list,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LogginInImplToJson(
      this,
    );
  }
}

abstract class LogginIn implements User {
  const factory LogginIn() = _$LogginInImpl;

  factory LogginIn.fromJson(Map<String, dynamic> json) =
      _$LogginInImpl.fromJson;
}

/// @nodoc
abstract class _$$SimpleWriterImplCopyWith<$Res> {
  factory _$$SimpleWriterImplCopyWith(
          _$SimpleWriterImpl value, $Res Function(_$SimpleWriterImpl) then) =
      __$$SimpleWriterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String username});
}

/// @nodoc
class __$$SimpleWriterImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$SimpleWriterImpl>
    implements _$$SimpleWriterImplCopyWith<$Res> {
  __$$SimpleWriterImplCopyWithImpl(
      _$SimpleWriterImpl _value, $Res Function(_$SimpleWriterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_$SimpleWriterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimpleWriterImpl implements SimpleWriter {
  const _$SimpleWriterImpl(
      {required this.id, required this.username, final String? $type})
      : $type = $type ?? 'simpleWriter';

  factory _$SimpleWriterImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimpleWriterImplFromJson(json);

  @override
  final int id;
  @override
  final String username;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.simpleWriter(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleWriterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleWriterImplCopyWith<_$SimpleWriterImpl> get copyWith =>
      __$$SimpleWriterImplCopyWithImpl<_$SimpleWriterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)
        login,
    required TResult Function() logout,
    required TResult Function() loggingIn,
    required TResult Function(int id, String username) simpleWriter,
    required TResult Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)
        list,
  }) {
    return simpleWriter(id, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)?
        login,
    TResult? Function()? logout,
    TResult? Function()? loggingIn,
    TResult? Function(int id, String username)? simpleWriter,
    TResult? Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)?
        list,
  }) {
    return simpleWriter?.call(id, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)?
        login,
    TResult Function()? logout,
    TResult Function()? loggingIn,
    TResult Function(int id, String username)? simpleWriter,
    TResult Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)?
        list,
    required TResult orElse(),
  }) {
    if (simpleWriter != null) {
      return simpleWriter(id, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Logout value) logout,
    required TResult Function(LogginIn value) loggingIn,
    required TResult Function(SimpleWriter value) simpleWriter,
    required TResult Function(UserList value) list,
  }) {
    return simpleWriter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Logout value)? logout,
    TResult? Function(LogginIn value)? loggingIn,
    TResult? Function(SimpleWriter value)? simpleWriter,
    TResult? Function(UserList value)? list,
  }) {
    return simpleWriter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Logout value)? logout,
    TResult Function(LogginIn value)? loggingIn,
    TResult Function(SimpleWriter value)? simpleWriter,
    TResult Function(UserList value)? list,
    required TResult orElse(),
  }) {
    if (simpleWriter != null) {
      return simpleWriter(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SimpleWriterImplToJson(
      this,
    );
  }
}

abstract class SimpleWriter implements User {
  const factory SimpleWriter(
      {required final int id,
      required final String username}) = _$SimpleWriterImpl;

  factory SimpleWriter.fromJson(Map<String, dynamic> json) =
      _$SimpleWriterImpl.fromJson;

  int get id;
  String get username;
  @JsonKey(ignore: true)
  _$$SimpleWriterImplCopyWith<_$SimpleWriterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserListImplCopyWith<$Res> {
  factory _$$UserListImplCopyWith(
          _$UserListImpl value, $Res Function(_$UserListImpl) then) =
      __$$UserListImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String username,
      int followerCount,
      int followingCount,
      BookForestFile? profile});

  $BookForestFileCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$UserListImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserListImpl>
    implements _$$UserListImplCopyWith<$Res> {
  __$$UserListImplCopyWithImpl(
      _$UserListImpl _value, $Res Function(_$UserListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? followerCount = null,
    Object? followingCount = null,
    Object? profile = freezed,
  }) {
    return _then(_$UserListImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      followerCount: null == followerCount
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as BookForestFile?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BookForestFileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $BookForestFileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UserListImpl implements UserList {
  const _$UserListImpl(
      {required this.id,
      required this.username,
      required this.followerCount,
      required this.followingCount,
      this.profile,
      final String? $type})
      : $type = $type ?? 'list';

  factory _$UserListImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserListImplFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final int followerCount;
  @override
  final int followingCount;
  @override
  final BookForestFile? profile;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.list(id: $id, username: $username, followerCount: $followerCount, followingCount: $followingCount, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.followerCount, followerCount) ||
                other.followerCount == followerCount) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, username, followerCount, followingCount, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListImplCopyWith<_$UserListImpl> get copyWith =>
      __$$UserListImplCopyWithImpl<_$UserListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)
        login,
    required TResult Function() logout,
    required TResult Function() loggingIn,
    required TResult Function(int id, String username) simpleWriter,
    required TResult Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)
        list,
  }) {
    return list(id, username, followerCount, followingCount, profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)?
        login,
    TResult? Function()? logout,
    TResult? Function()? loggingIn,
    TResult? Function(int id, String username)? simpleWriter,
    TResult? Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)?
        list,
  }) {
    return list?.call(id, username, followerCount, followingCount, profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String username, String? phoneNumber,
            DateTime? birthday, BookForestFile? profile)?
        login,
    TResult Function()? logout,
    TResult Function()? loggingIn,
    TResult Function(int id, String username)? simpleWriter,
    TResult Function(int id, String username, int followerCount,
            int followingCount, BookForestFile? profile)?
        list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(id, username, followerCount, followingCount, profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Logout value) logout,
    required TResult Function(LogginIn value) loggingIn,
    required TResult Function(SimpleWriter value) simpleWriter,
    required TResult Function(UserList value) list,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Logout value)? logout,
    TResult? Function(LogginIn value)? loggingIn,
    TResult? Function(SimpleWriter value)? simpleWriter,
    TResult? Function(UserList value)? list,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Logout value)? logout,
    TResult Function(LogginIn value)? loggingIn,
    TResult Function(SimpleWriter value)? simpleWriter,
    TResult Function(UserList value)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserListImplToJson(
      this,
    );
  }
}

abstract class UserList implements User {
  const factory UserList(
      {required final int id,
      required final String username,
      required final int followerCount,
      required final int followingCount,
      final BookForestFile? profile}) = _$UserListImpl;

  factory UserList.fromJson(Map<String, dynamic> json) =
      _$UserListImpl.fromJson;

  int get id;
  String get username;
  int get followerCount;
  int get followingCount;
  BookForestFile? get profile;
  @JsonKey(ignore: true)
  _$$UserListImplCopyWith<_$UserListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
