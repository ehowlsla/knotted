import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:knotted/data/provider/api_provider.dart';
import 'package:knotted/page/find_id.dart';
import 'package:knotted/theme/n_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:pintoss/api/apiProvider.dart';
// import 'package:pintoss/api/models/resDefault.dart';
// import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';
import 'join.dart';

class LoginPage extends StatefulWidget {

  bool hasAppBar;
  LoginPage({this.hasAppBar = false});

  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final textEmailController = TextEditingController();
  final textPasswordController = TextEditingController();
  // final provider = ApiProvider();

  goLoginRequest() async {
    try {
      loginRequestValidate();
      var provider = ApiProvider();
      var res = await provider.login(textEmailController.text.toString().trim(), textPasswordController.text.toString().trim());



      if(res.statusCode == HttpStatus.ok) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString('login_id', textEmailController.text.toString().trim());
          prefs.setString('token', res.body);
          Get.offAll(() => Home());
      } else {
          Fluttertoast.showToast(msg: res.body.toString());
      }
    } on FormatException catch (e) {
      Fluttertoast.showToast(msg: e.message);
    }
  }

  loginRequestValidate() {
    String login_id = textEmailController.text;
    String login_pw = textPasswordController.text;
    if(login_id.isEmpty || login_pw.isEmpty || login_id.trim().length == 0 || login_pw.trim().length == 0) return throw new FormatException('로그인 ID 또는 비밀번호 값이 비어있습니다.');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initLoginID();
    
  }
  
  initLoginID() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      textEmailController.text = prefs.getString('login_id') ?? '';
    });
  }

  bodyWidget() {
    return SafeArea(
      child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 50.0),
                  child: Column(
                    children: [
                      Image.asset('images/logo_smile.png', height: 80),
                      SizedBox(height: 40.0),
                      Row(
                        children: [
                          Container(
                              width: 80,
                              child: Text('아이디')
                          ),
                          Flexible(
                            child: Container(
                              height: 50.0,
                              child: TextField(

                                controller: textEmailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: '',

                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                                    borderSide: BorderSide(width: 1, color: Colors.black),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                                    borderSide: BorderSide(width: 1, color: Colors.grey),
                                  ),

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Container(
                              width: 80,
                              child: Text('비밀번호')
                          ),
                          Flexible(
                            child: Container(
                              height: 50.0,
                              child: TextField(

                                controller: textPasswordController,
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: '',
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                                    borderSide: BorderSide(width: 1, color: Colors.black),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                                    borderSide: BorderSide(width: 1, color: Colors.grey),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: [
                          Container(
                            width: 80,
                          ),
                          Expanded(
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () => Get.to(FindIDPage()),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                        child: Text('아이디찾기')
                                    ),
                                  ),
                                ),
                              )
                          ),
                          Expanded(
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () => print(1234),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                        child: Text('비밀번호찾기')
                                    ),
                                  ),
                                ),
                              )
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: NColors.powderYellow2,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => goLoginRequest(),
                  child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                        child: Text('로그인'),
                      )
                  ),
                ),
              ),
            )

          ]

      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    if(widget.hasAppBar == true) {
      return Scaffold(
          backgroundColor: NColors.powderYellow2,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            leading: IconButton(
              icon: Image.asset('images/icon_back.png', width: 10.0),
              onPressed: () => Navigator.pop(context, false),
            ),
            // title: Image.asset('', width: 90),
            title: Text('로그인'),
            centerTitle: true,
            bottomOpacity: 0.0,
            elevation: 0.0,
          ),
          body: bodyWidget()
      );
    }

    return Scaffold(
        backgroundColor: NColors.powderYellow2,
        resizeToAvoidBottomInset: false,
        body: bodyWidget()
    );

  }
}
