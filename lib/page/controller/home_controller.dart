

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
class HomeController extends GetxController {


  var tabIndex = 0.obs;
  // User? user;

  changeTab(int val) {
    tabIndex.value = val;
    // if(val == 1) { _gc.getData(); }
    // if(val == 2) { _hc.getData(); }
  }


  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   super.onInit();
  //   getUserSession();
  // }
  //
  //
  // Future<void> getUserSession() async {
  //   var res = await _provider.session();
  //
  //   if(res.statusCode == HttpStatus.ok) {
  //     user = User.fromJson(res.body);
  //   }
  // }
}