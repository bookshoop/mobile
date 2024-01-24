import 'package:bookforest/features/auth/data/dtos/jwt.dart';
import 'package:bookforest/features/user/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.g.dart';
part 'login_response.freezed.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required Jwt token,
    required Login user,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
