// 사용자 pay ㅅㅏ용 내역
import 'brand.dart';
import 'store.dart';
import 'user.dart';

class UserPush {
  int user_id;

  String os; // 푸시 기기 OS 형식 : ios | android | web

  String token; // 푸시 토큰

  bool accept; // PUSH 발송 허용 여부

  String created_at;

  String updated_at;

  User user;
}