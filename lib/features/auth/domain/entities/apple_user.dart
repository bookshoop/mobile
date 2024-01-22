import 'package:freezed_annotation/freezed_annotation.dart';

part 'apple_user.freezed.dart';

@freezed
class AppleUser with _$AppleUser {
  const factory AppleUser({
    required String id,
    required String nickName,
  }) = _AppleUser;

  factory AppleUser.fromMap({
    required Map<String, String> map,
  }) {
    int index = map['email']!.indexOf('@');
    String nickName = map['email']!.substring(0, index);
    return AppleUser(
      id: map['sub']!,
      nickName: nickName,
    );
  }
}
