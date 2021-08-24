import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:knotted/page/find_id.dart';
import 'package:knotted/theme/n_colors.dart';
// import 'package:pintoss/api/apiProvider.dart';
// import 'package:pintoss/api/models/resDefault.dart';
// import 'package:shared_preferences/shared_preferences.dart';

import 'join.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final textEmailController = TextEditingController();
  final textPasswordController = TextEditingController();
  // final provider = ApiProvider();

  goLoginRequest() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setString("login_id", textEmailController.text);

    // Response res = await provider.postLogin(textEmailController.text.toString(), textPasswordController.text.toString());
    // res.
    //{error_code: 101, message: 가입되지 않은 이메일 이거나 비밀번호가 잘못되었습니다. 다시 계정을 확인해주시기 바랍니다.}
    // print(res.body);
    // SessionInit.fromJson(json.decode(response.content()));

    // SessionInit res = await _repository.postSession(device_id);
    // if(res.code == 0) {
    //   SharedPreferences prefs = await SharedPreferences.getInstance();
    //   prefs.setString('device_id', res.device_id);
    // }
  }

  loginRequestValidate() {
    String login_id = textEmailController.text;
    String login_pw = textPasswordController.text;
    if(login_id.isEmpty || login_pw.isEmpty) return throw new FormatException('로그인 ID 또는 비밀번호 값이 비어있습니다.');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initLoginID();
    
  }
  
  initLoginID() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // textEmailController.text = prefs.getString('login_id');
    // textEmailController.text(prefs.getString('login_id'));
  }
  
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
        // title: Image.asset('', width: 90),
        title: Text('로그인'),
        centerTitle: true,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: SafeArea(
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
                      // Row(
                      //   children: [
                      //     // Text('아이디'),
                      //     TextField(
                      //       controller: textEmailController,
                      //       keyboardType: TextInputType.emailAddress,
                      //       decoration: InputDecoration(
                      //         hintText: '이메일',
                      //         enabledBorder: UnderlineInputBorder(
                      //           borderSide: BorderSide(color: Colors.black26),
                      //         ),
                      //         focusedBorder: UnderlineInputBorder(
                      //           borderSide:
                      //           BorderSide(color: Color.fromRGBO(254, 95, 128, 1.0)),
                      //         ),
                      //       ),
                      //     ),
                      //     // TextField(
                      //     //   controller: textPasswordController,
                      //     //   obscureText: true,
                      //     //   decoration: InputDecoration(
                      //     //     hintText: '비밀번호',
                      //     //     enabledBorder: UnderlineInputBorder(
                      //     //       borderSide: BorderSide(color: Colors.black26),
                      //     //     ),
                      //     //     focusedBorder: UnderlineInputBorder(
                      //     //       borderSide:
                      //     //       BorderSide(color: Color.fromRGBO(254, 95, 128, 1.0)),
                      //     //     ),
                      //     //   ),
                      //     // ),
                      //   ],
                      // )
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
                    onTap: () => print(1234),
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
      ),

//       body: SafeArea(child: Padding(
//         padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
//         child: Column(
//           children: [
//             TextField(
//               controller: textEmailController,
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                 hintText: '이메일',
//                 enabledBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(color: Colors.black26),
//                 ),
//                 focusedBorder: UnderlineInputBorder(
//                   borderSide:
//                   BorderSide(color: Color.fromRGBO(254, 95, 128, 1.0)),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: textPasswordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 hintText: '비밀번호',
//                 enabledBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(color: Colors.black26),
//                 ),
//                 focusedBorder: UnderlineInputBorder(
//                   borderSide:
//                   BorderSide(color: Color.fromRGBO(254, 95, 128, 1.0)),
//                 ),
//               ),
//             ),  SizedBox(height: 20),
//             Container(
//               width: MediaQuery.of(context).size.width,
//               height: 50,
//               decoration: BoxDecoration(
//                 color: Color.fromRGBO(254, 95, 128, 1.0),
//                 borderRadius: BorderRadius.circular(2.0),
//               ),
//               child: TextButton(
//                 child: Text('이메일 로그인',
//                     style: TextStyle(color: Colors.white, fontSize: 16)),
//                 onPressed: () {
//                   try {
//                     loginRequestValidate();
//                     goLoginRequest();
//                     FocusScope.of(context).requestFocus(FocusNode());
//                   } on FormatException catch (e) {
//                     // Fluttertoast.showToast(
//                     //     msg: e.message,
//                     //     toastLength: Toast.LENGTH_SHORT,
//                     //     gravity: ToastGravity.CENTER,
//                     //     timeInSecForIosWeb: 1,
//                     //     backgroundColor: Colors.red,
//                     //     textColor: Colors.white,
//                     //     fontSize: 16.0
//                     // );
//                   }
//                 },
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.pushNamed(context, 'findPW');
//               },
//               child: Row(
//                 children: <Widget>[
//                   Text('비밀번호를 잊으셨나요?'),
//                   SizedBox(width: 15),
//                   Text('비밀번호 찾기',
//                       style: TextStyle(
//                           decoration: TextDecoration.underline,
//                           color: Color.fromRGBO(254, 95, 128, 1.0))),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10),
//             GestureDetector(
//               onTap: () {
// //                    Navigator.of(context).pop();
//                 Get.to(JoinPage());
//                 // Navigator.pushNamed(context, 'join')
//                 //     .then((value) => Navigator.of(context).pop());
//               },
//               child: Row(
//                 children: <Widget>[
//                   Text('아직 회원이 아니신가요?'),
//                   SizedBox(width: 10),
//                   Text('가입하기',
//                       style: TextStyle(
//                           decoration: TextDecoration.underline,
//                           color: Color.fromRGBO(254, 95, 128, 1.0))),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       )),
    );
  }
}
