// 사용자 pay ㅅㅏ용 내역
import 'brand.dart';
import 'store.dart';
import 'user.dart';

class UserStampPayment {
  int? id;

  int? user_id;

  int? brand_id; // 스탬프 적립/차감 브랜드 고유번호

  int? store_id; // 스탬프 적립/차감 상점 고유번호

  String? brand; // 스탬프 적립/차감 브랜드명(브랜드 정보가 등록되지 않은 경우 명칭만 저장하기 위함)

  String? store; // 스탬프 발급 상점명(상전 정보가 등록되지 않은 경우 명칭만 저장하기 위함)

  int? payment_amount; // 스탬프 적립/차감시 결제한 금액

  int? issuer_id; // 스탬프 적립/차감자 아이디. 시스템 적립/차감한 경우 null

  int? quantity; // 적립/차감 수량(+-)

  int? balance; // 현재 스탬프

  String? comments; // 적립 및 차감 내용

  String? pos; // 오프라인 POS 장비에서 전달해주는 데이터 저장: 브랜드명, 매장명, 구매 정보(금액, 메뉴 등)

  String? created_at;

  String? updated_at;

  User? user;

  Brand? brandInfo;

  Store? storeInfo;

  User? issuer;
}