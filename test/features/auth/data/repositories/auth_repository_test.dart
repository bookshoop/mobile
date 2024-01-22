import 'package:bookforest/features/auth/data/dtos/jwt.dart';
import 'package:bookforest/features/auth/data/dtos/sign_in_data.dart';
import 'package:bookforest/features/auth/data/repositories/auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<AuthRepository>()])
import 'auth_repository_test.mocks.dart';

void main() {
  group('소셜로그인 repository 테스트', () {
    late MockAuthRepository mockAuthRepository;
    setUpAll(() {
      mockAuthRepository = MockAuthRepository();
    });

    test('소셜로그인', () async {
      const jwt = Jwt(refreshToken: 'refreshToken', accessToken: 'accessToken');
      when(
        mockAuthRepository.socialLogin(
          snsName: anyNamed('snsName'),
          signInData: anyNamed('signInData'),
        ),
      ).thenAnswer((_) async => jwt);

      final result = await mockAuthRepository.socialLogin(
        snsName: 'kakao',
        signInData: SignInData.test(),
      );

      expect(result, jwt);
    });
  });
}
