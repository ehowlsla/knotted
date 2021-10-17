class Product {
  int? id; // 고유번호

  String? title; // 한글 상품명

  String? subtitle; // 한글 서브 상품명

  String? title_en; // 영문 상품명

  String? subtitle_en; // 영문 서브 상품명

  String? description; // 상세 설명

  String? composition_info; // 구성 정보

  String? nutritional_info; // 영양 정보

  String? allergy_info; // 알러지 주의사항

  bool? is_display; // 상품 진열 여부

  int? price; // 개별 단가(원)

  int? stock; // 재고 수량. null인 경우 무한 수량

  String? options; // 제품별 옵션: hot/ice, 샷 추가 가능(추가 비용), 얼음의 양, 드리즐의 양, 시럽의 양 등 JSON으로 저장


  String? created_at;

  String? updated_at;
}