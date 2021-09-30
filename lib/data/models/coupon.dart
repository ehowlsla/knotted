import 'product.dart';
import 'store.dart';
import 'user.dart';

class Coupon {
  int id;

  int issuer_id; // 쿠폰 발행인 고유번호

  String title; // 쿠폰명

  String subtitle; // 쿠폰 서브 명

  int min_user_level; // 사용가능 최소 사용자 등급

  int max_user_level; // 사용가능 최대 사용자 등급

  String issuance_conditions; // 시스템이 자동으로 발급한 쿠폰의 경우 쿠폰이 발급된 조건 : 웰컴스마일 감사 쿠폰 | 스마일 5개 적립 | 생일 축하 쿠폰 등

  String available_at; // 쿠폰 사용 가능 일시. null인 경우 바로 사용 가능

  String expiration_at; // 쿠폰 사용 종료 일시. null이면 종료 기간 없음

  String created_at; // 생성일시

  String updated_at;

  User user;
}