

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:knotted/data/models/user.dart';
import 'package:knotted/data/provider/api_provider.dart';

class MyInfoController extends GetxController {
  ApiProvider _provider = ApiProvider();
  var user = User().obs;

  Future<bool> getMyInfo() async {
    var res = await _provider.myinfo();
    if(res.statusCode == HttpStatus.ok) {
      user = User.fromJson(res.body).obs;
      return true;
    }
    return false;
  }
}