import 'package:bookforest/common/domain/entities/book_forest_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
sealed class User with _$User {
  // 이런식으로 User의 상태값을 구분할 수 있는 듯
  // User를 implements해서 각각의 상태에 해당하는 클래스를 구현
  // User의 하위클래스이기 때문에 User타입이 여러 상태를 담을 수 있다.
  const factory User.login({
    required int id,
    required String username,
    String? phoneNumber,
    DateTime? birthday,
    BookForestFile? profile,
  }) = Login;

  const factory User.logout() = Logout;

  const factory User.loggingIn() = LogginIn;

  const factory User.simpleWriter({
    required int id,
    required String username,
    // String? phoneNumber,
    // DateTime? birthday,
    // String? profilePath,
  }) = SimpleWriter;

  const factory User.list({
    required int id,
    required String username,
    required int followerCount,
    required int followingCount,
    BookForestFile? profile,
    // String? phoneNumber,
    // DateTime? birthday,
    // String? profilePath,
  }) = UserList;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
