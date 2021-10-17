import 'store.dart';

class StroePackage {
  int? id;

  int? store_id; // 상점 고유번호

  String? title; // 패키지 한글 제목

  String? title_en; // 패키지 영문 제목

  String? descriptionp; // 패키지 설명

  int? min; // 포장 가능 물품 최소 수량

  int? max; // 포장 가능 물품 최대 수량

  bool? is_default; // 매장 숨김 여부

  String? created_at; // 생성일시

  String? updated_at;

  Store? store;
}