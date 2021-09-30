import 'product.dart';
import 'store.dart';
import 'user.dart';

class CouponUser {
  int barcode;

  String barcode_at; // 쿠폰 바코트 사용 가능 일시

  int payment_id; // 만일 사용된 쿠폰인 경우 사용된 결제 정보의 아이디

  String use_at; // 쿠폰 사용하기 전에는 null. 이미 사용한 쿠폰의 경우 사용 일시

  String created_at; // 생성일시

  String updated_at;
}