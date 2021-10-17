
import 'order.dart';

class OrderBooking {
  int? id;

  int? order_id;

  String? start_at; // 타임슬롯 시작 시간

  String? end_at; // 타임슬롯 종료 시간

  String? created_at; // 생성일시

  String? updated_at; // 수정일시

  Order? order;
}