class Menu {
  int? id;

  String? title; // 메뉴명

  String? description; // 메뉴 설명

  int? class1; // 대분류: 1(주문) | 2(예약) | 3(샵)

  int? class2; // 중분류: 1(도넛) | 2(음료) | 3(베이커리) | 4(굿즈)

  int? class3; // 소분류

  int? order; // 메뉴 자체 출력 순서

  String? sorting_method; // 메뉴 내 상품 진열순서 (사용자가 보는 메뉴 순서)변경됨: 최근 등록상품 | 판매량 높은 상품 | 조회수 높은 상품

  bool? is_visible; // 표시 여부

  String? created_at;

  String? updated_at;
}