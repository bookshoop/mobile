import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt.freezed.dart';
part 'jwt.g.dart';

@freezed
class Jwt with _$Jwt {
  const factory Jwt({
    required String refreshToken,
    required String accessToken,
  }) = _Jwt;

  factory Jwt.fromJson(Map<String, dynamic> json) => _$JwtFromJson(json);
}
