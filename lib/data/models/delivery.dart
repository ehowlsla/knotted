import 'package:knotted/data/models/delivery_company.dart';
import 'package:knotted/data/models/user.dart';


class Delivery {
  int? id;

  int? user_id;

  String? name; // 배송지명

  String? phone; // 배송 연락처

  String? zipcode; // 우편번호

  String? address; // 배송지 기본 주소

  String? address_detail; // 배송지 상세 주소

  String? memo; // 메모

  int? delivery_company_id; // 배송업체 등록 아이디. 배송업체 정보. null인경우 기본 배송업체 정보임

  String? delivery_invoice_num; // 운송장 번호

  String? status; // 배송 상태

  String? status_reason; // 배송 상태 사유


  String? created_at;

  String? updated_at;

  User? user;

  DeliveryCompany? deliveryCompany;
}