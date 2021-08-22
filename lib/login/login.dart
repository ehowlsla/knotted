import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:pintoss/api/apiProvider.dart';
import 'package:pintoss/api/models/resDefault.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'join.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final textEmailController = TextEditingController();
  final textPasswordController = TextEditingController();
  final provider = ApiProvider();

  goLoginRequest() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("login_id", textEmailController.text);

    Response res = await provider.postLogin(textEmailController.text.toString(), textPasswordController.text.toString());
    // res.
    //{error_code: 101, message: 가입되지 않은 이메일 이거나 비밀번호가 잘못되었습니다. 다시 계정을 확인해주시기 바랍니다.}
    print(res.body);
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
    SharedPreferences prefs = await SharedPreferences.getInstance();
    textEmailController.text = prefs.getString('login_id');
    // textEmailController.text(prefs.getString('login_id'));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
        title: Image.asset('', width: 90),
        centerTitle: true,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: SafeArea(child: Padding(
        padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
        child: Column(
          children: [
            TextField(
              controller: textEmailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: '이메일',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                  BorderSide(color: Color.fromRGBO(254, 95, 128, 1.0)),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: textPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: '비밀번호',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                  BorderSide(color: Color.fromRGBO(254, 95, 128, 1.0)),
                ),
              ),
            ),  SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(254, 95, 128, 1.0),
                borderRadius: BorderRadius.circular(2.0),
              ),
              child: TextButton(
                child: Text('이메일 로그인',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onPressed: () {
                  try {
                    loginRequestValidate();
                    goLoginRequest();
                    FocusScope.of(context).requestFocus(FocusNode());
                  } on FormatException catch (e) {
                    Fluttertoast.showToast(
                        msg: e.message,
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  }
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'findPW');
              },
              child: Row(
                children: <Widget>[
                  Text('비밀번호를 잊으셨나요?'),
                  SizedBox(width: 15),
                  Text('비밀번호 찾기',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color.fromRGBO(254, 95, 128, 1.0))),
                ],
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
//                    Navigator.of(context).pop();
                Get.to(JoinPage());
                // Navigator.pushNamed(context, 'join')
                //     .then((value) => Navigator.of(context).pop());
              },
              child: Row(
                children: <Widget>[
                  Text('아직 회원이 아니신가요?'),
                  SizedBox(width: 10),
                  Text('가입하기',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color.fromRGBO(254, 95, 128, 1.0))),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
