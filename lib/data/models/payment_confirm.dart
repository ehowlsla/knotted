import 'user.dart';

class PaymentConfirm {
  int? id;

  int? user_id; // 주문 고유번호

  String? title; // 주문명

  int? amount; // 총 결제 금액(음수의 경우 취소한 총 금액)

  String? pg; // pg 회사에서 결제후 callback url로 전달해주는 데이터

  String? pos; // 오프라인 결제 장비인 POS 장비에서 결제 후 전달해주는 데이터

  String? created_at;

  String? updated_at;

  User? user;
}