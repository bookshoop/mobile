import 'package:bookforest/core/configs/flavor/config.dart';
import 'package:bookforest/core/configs/network/dio_provider.dart';
import 'package:bookforest/features/auth/data/dtos/login_response.dart';
import 'package:bookforest/features/auth/data/dtos/sign_in_data.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';

@Riverpod(keepAlive: true)
AuthRepository authRepository(AuthRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  final baseUrl = Config.instance.baseUrl;
  return AuthRepository(dio, baseUrl: baseUrl);
}

@RestApi()
abstract class AuthRepository {
  factory AuthRepository(Dio dio, {String baseUrl}) = _AuthRepository;

  @POST('/social-login')
  Future<LoginResponse> socialLogin({
    @Body() required SignInData signInData,
  });
}
