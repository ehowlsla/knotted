class User {
  int? id;
  String? uid;
  String? password;
  String? name;
  String? nicname;
  String? phone;
  String? email;
  String? photo;
  String? zipcode;
  String? address;
  String? address_detail;
  String? gender;
  String? birthday;
  int? level;
  String? barcode;
  String? type;
  String? type_reason;
  String? status;
  String? status_reason;
  String? auth_access;
  String? created_at;
  String? updated_at;

  User();

  User.fromJson(Map<String, dynamic> json) {
    this.id = json['id'] ?? 0;
    this.uid = json['uid'] ?? '';
    this.password = json['password'] ?? '';
    this.name = json['name'] ?? '';
    this.nicname = json['nicname'] ?? '';
    this.phone = json['phone'] ?? '';
    this.email = json['email'] ?? '';
    this.photo = json['photo'] ?? '';
    this.zipcode = json['zipcode'] ?? '';
    this.address = json['address'] ?? '';
    this.address_detail = json['address_detail'] ?? '';
    this.gender = json['gender'] ?? '';
    this.birthday = json['birthday'] ?? '';
    this.level = json['level'] ?? '';
    this.barcode = json['barcode'] ?? '';
    this.type = json['type'] ?? '';
    this.type_reason = json['type_reason'] ?? '';
    this.status = json['status'] ?? '';
    this.status_reason = json['status_reason'] ?? '';
    this.auth_access = json['auth_access'] ?? '';
    this.created_at = json['created_at'] ?? '';
    this.updated_at = json['updated_at'] ?? '';
  }
}