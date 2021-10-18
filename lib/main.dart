import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:knotted/data/provider/api_provider.dart';
import 'package:knotted/helper/device_helper.dart';
import 'package:knotted/page/controller/myinfo_controller.dart';
import 'package:knotted/page/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'page/home.dart';
import 'page/home/tab3.dart';
import 'smile_order/smile_order.dart';
import 'theme/n_colors.dart';

void main() {

  runApp(GetMaterialApp(
      title: '굿핀',
      initialRoute: 'home',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: AppHome()
  ));
}

// class MyApp extends StatelessWidget {
//   static const String _title = 'Instagram clone';
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: AppHome(),
//       theme: ThemeData(
//           primaryColor: Colors.white
//       ),
//     );
//   }
// }

class AppHome extends StatelessWidget {

  final MyInfoController c = Get.put(MyInfoController());

  Future<Widget> getHome() async {
    if(await c.getMyInfo()) {
      return Home();
    } else {
      return LoginPage();
    }
  }




  @override
  Widget build(BuildContext context) {

    return FutureBuilder<Widget>(
        future: getHome(),
        builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else {
            if(snapshot.hasError) {
              // print("build ahserror ${snapshot.error}");
              return LoginPage();
            } else {
              return snapshot.data ?? Container();
            }
          }
        }
    );



  }

}