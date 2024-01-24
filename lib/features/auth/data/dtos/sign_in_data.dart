import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_data.freezed.dart';
part 'sign_in_data.g.dart';

/// 일반로그인 데이터
@freezed
class SignInData with _$SignInData {
  const factory SignInData({
    required String socialId,
    required String socialProvider,
    DateTime? birthday,
    String? mobile,
    String? pushToken,
  }) = _SignInData;

  // factory SignInData.test() =>
  //     const SignInData(nickname: 'nickname', pushToken: 'pushToken');

  factory SignInData.fromJson(Map<String, dynamic> json) =>
      _$SignInDataFromJson(json);
}
