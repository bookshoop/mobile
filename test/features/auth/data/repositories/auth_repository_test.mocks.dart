// Mocks generated by Mockito 5.4.2 from annotations
// in bookforest/test/features/auth/data/repositories/auth_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:bookforest/features/auth/data/dtos/jwt.dart' as _i2;
import 'package:bookforest/features/auth/data/dtos/sign_in_data.dart' as _i5;
import 'package:bookforest/features/auth/data/repositories/auth_repository.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeJwt_0 extends _i1.SmartFake implements _i2.Jwt {
  _FakeJwt_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AuthRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRepository extends _i1.Mock implements _i3.AuthRepository {
  @override
  _i4.Future<_i2.Jwt> socialLogin({
    required String? snsName,
    required _i5.SignInData? signInData,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #socialLogin,
          [],
          {
            #snsName: snsName,
            #signInData: signInData,
          },
        ),
        returnValue: _i4.Future<_i2.Jwt>.value(_FakeJwt_0(
          this,
          Invocation.method(
            #socialLogin,
            [],
            {
              #snsName: snsName,
              #signInData: signInData,
            },
          ),
        )),
        returnValueForMissingStub: _i4.Future<_i2.Jwt>.value(_FakeJwt_0(
          this,
          Invocation.method(
            #socialLogin,
            [],
            {
              #snsName: snsName,
              #signInData: signInData,
            },
          ),
        )),
      ) as _i4.Future<_i2.Jwt>);
}