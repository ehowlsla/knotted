class DeliveryCompany {
  int id;

  String type; // 배송 방법: 택배, 빠른 우편 등

  String company; // 배송 회사명

  String company_url; // 배송 회사 홈페이지 URL

  String company_tracking_url; // 배송 조회 기본 URL

  int fee; // 기본 배송비

  int fee_exemption; // 배송비 면제 금액

  int fee_addition; // 도서/산간 추가 배송비

  int fee_exchange; // 교환 배송비

  int fee_return; // 반품 배송비

  bool is_default; // 현재 배송 업체가 기본 업체인지 여부

  String created_at; // 생성일시

  String updated_at;
}