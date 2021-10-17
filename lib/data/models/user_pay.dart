// 사용자 결제방식 정보
class UserPay {
  int? id;

  int? user_id;

  String? title;

  bool? is_auto_recharging; // 자동 결제 여부

  int? recharge_base_amount; // 충전 기준 잔액: 5천원 | 1만원 | 2만원 | 3만원

  int? recharge_amount; // 자동 충전 금액: 1만원 | 3만원 | 5만원 | 10만원

  String? payment_method; // PG에서 넘어오는 결제수단 정보 저장

  String? barcode; // Pay 사용시 앱에서 보여줄 바코드 정보

  String? barcode_at; // Pay 바코트 사용 가능 일시

  String? created_at; // 생성일시

  String? updated_at;
}