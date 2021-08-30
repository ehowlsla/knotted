import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:knotted/theme/n_colors.dart';
// import 'package:pintoss/api/apiProvider.dart';
// import 'package:pintoss/api/models/resDefault.dart';
// import 'package:shared_preferences/shared_preferences.dart';


class StoreSearch extends StatelessWidget {

  final textSearchController = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NColors.powderYellow2,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('images/icon_back.png', width: 10.0),
          onPressed: () => Navigator.pop(context, false),
        ),
        title: Text('아이디 찾기'),
        centerTitle: true,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: SafeArea(
      ),
    );
  }
}
