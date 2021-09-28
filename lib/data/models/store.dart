class Store {
  int id;

  String title; // 상품명

  String subtitle; //

  String title_en; //

  String subtitle_en; // 영문 서브 상품명

  String description; // 상세 설명

  String tel;

  String zipcode; // 우편번호


  String address;

  String address_detail; // 상세 주소


  int location_lat;


  int location_lng;

  bool is_product_display; // 상품 진열 여부


  String open_at; // 오픈 시간

  String close_at; // 마감 시간


  String sirenorder_open_at; // 실시간 주문 오픈 시간


  String sirenorder_close_at; // 실시간 주문 마감 시간


  int sirenorder_radius; // 실시간 주문 가능 거리(km)


  bool is_sirenorderable; // 실시간 주문 가능 여부


  String sirenorderable_reason; // 실시간 주문 가능 불가 사유


  bool is_hidden; // 매장 숨김 여부


  String hidden_reason; // 매장 숨김 사유


  int required_time; // 메뉴당 최대 준비 시간(분)


  String options; // 매장별 옵션: 주차 가능 여부, 와이파이 가능 여부, 발렛 가능 여부 등 JSON으로 저장


  String created_at;

  String updated_at;
}