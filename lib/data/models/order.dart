import 'package:knotted/data/models/delivery.dart';
import 'package:knotted/data/models/payment_cancel.dart';
import 'package:knotted/data/models/payment_confirm.dart';

import 'store.dart';
import 'user.dart';

class Order {
  int id;

  int user_id;

  int store_id;

  String type; // 주문 형태: order(실시간주문) | booking(예약주문) | shop(스마일샵)

  int delivery_id; // type이 shop인 경우 배송 정보 포함. 이 값이 null인 경우 order나 booking

  String picup_label; // 픽업 번호 혹은 주문자 닉네임. 각 매장마다 다를 수 있음

  int required_time; // 최대 준비 시간

  int payment_confirm_id; // 승인 결제 고유번호

  int payment_cancel_id; // 취소 결제 고유번호

  String packages; // 포장 정보


  String created_at;

  String updated_at;

  User user;

  Store store;

  Delivery delivery;

  PaymentConfirm paymentConfirm;

  PaymentCancel paymentCancel;

}