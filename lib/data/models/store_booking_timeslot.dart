import 'store.dart';

class StoreBookingTimeslot {
  int id;

  int store_id;

  String start_at; // 타임슬롯 시작 시간

  String end_at; // 타임슬롯 종료 시간

  int mon; // 월요일 최대 예약 가능 수량

  int tue; // 화요일 최대 예약 가능 수량

  int wed; // 수요일 최대 예약 가능 수량

  int thu;

  int fri;

  int sat;

  int sun;

  String created_at;

  String updated_at;

  Store store;
}