class Cart {
  // id	integer
  // readOnly: true
  // 고유번호
  //
  // user_id	integer
  // 사용자 고유번호
  //
  // store_id	integer
  // 상점 고유번호
  //
  // product_id	integer
  // 상품 고유번호
  //
  // order_type	string
  // 주문 형태: order(실시간주문) | booking(예약주문) | shop(스마일샵)
  //
  // quantity	integer
  // 주문 수량
  //
  // options	string
  // 제품별 옵션: hot/ice, 샷 추가 가능(추가 비용), 얼음의 양, 드리즐의 양, 시럽의 양 등 JSON으로 저장
  //
  // created_at	string($date)
  // readOnly: true
  // 생성일시
  //
  // updated_at	string($date)
}