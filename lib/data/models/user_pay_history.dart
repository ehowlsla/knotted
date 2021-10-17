// 사용자 pay ㅅㅏ용 내역
import 'brand.dart';
import 'store.dart';
import 'user.dart';

class UserPayHistory {
  int? id; // 고유번호

  int? user_id; // 사용자 고유번호

  int? brand_id; // 브랜드 고유번호

  int? store_id; // 상점 고유번호

  int? payment_id; // 결제 고유번호

  String? title; // Pay 사용 명칭

  int? amount; // 총 결제 금액(음수의 경우 취소한 총 금액)

  int? balance; // 잔액

  String? created_at; // 생성일시

  String? updated_at;

  User? user;

  Brand? brand;

  Store? store;
}