// 사용자 pay ㅅㅏ용 내역
import 'brand.dart';
import 'store.dart';
import 'user.dart';

class UserStampStore {
  int id;

  int user_id;

  int brand_id; // 스탬프 발급 브랜드 고유번호

  int store_id; // 스탬프 발급 상점 고유번호

  String comments; // 발급 내용

  String delete_reason; // 삭제 사유: 결제 취소 등

  String created_at;

  String updated_at;

  User user;

  Brand brand;

  Store stroe;
}