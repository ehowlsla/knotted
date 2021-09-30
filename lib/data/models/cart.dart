import 'product.dart';
import 'store.dart';
import 'user.dart';

class Cart {
  int id;

  int user_id;

  int store_id;

  int product_id;

  String order_type; // 주문 형태: order(실시간주문) | booking(예약주문) | shop(스마일샵)

  int quantity; // 주문 수량

  String options; // 제품별 옵션: hot/ice, 샷 추가 가능(추가 비용), 얼음의 양, 드리즐의 양, 시럽의 양 등 JSON으로 저장

  String created_at; // 생성일시

  String updated_at;

  User user;

  Store store;

  Product product;
}