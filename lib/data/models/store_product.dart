import 'store.dart';

class StroeProduct {
  bool is_sirenorderable; // 실시간 주문 가능 여부

  String sirenorderable_reason; // 실시간 주문 가능 불가 사유

  bool is_hidden; // 매장 숨김 여부

  String hidden_reason; // 매장 숨김 사유

  String created_at;

  String updated_at;
}