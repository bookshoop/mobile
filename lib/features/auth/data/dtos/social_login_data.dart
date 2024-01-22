import 'package:bookforest/features/auth/domain/entities/enums/login_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_login_data.freezed.dart';
part 'social_login_data.g.dart';

@freezed
class SocialLoginData with _$SocialLoginData {
  const factory SocialLoginData({
    String? profile,
    required String nickname,
    String? phoneNumber,
    required String pushToken,
    DateTime? birthday,
    List<int>? likeGenre,
    int? accessRouteId,
    int? accessRoute,
    required LoginType socialProvider,
    required String socialId,
  }) = _SocialLoginData;

  // factory SocialLoginData.fromKakao(User user) {
  //   return SocialLoginData(
  //     nickname: user.,
  //     pushToken: pushToken,
  //     socialProvider: socialProvider,
  //     socialId: socialId,
  //   );
  // }

  factory SocialLoginData.fromJson(Map<String, dynamic> json) =>
      _$SocialLoginDataFromJson(json);
}
