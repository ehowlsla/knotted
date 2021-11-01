import 'package:daum_postcode_search/data_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knotted/page/daum_postcode_search.dart';
import 'package:knotted/theme/n_colors.dart';
import 'package:knotted/theme/pink_button.dart';
import 'package:knotted/theme/round_text_field.dart';

class JoinPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => JoinPageState();
}

class JoinPageState extends State<JoinPage> {

  final idController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final nicknameController = TextEditingController();
  final phoneController = TextEditingController();
  final phoneCodeController = TextEditingController();
  final emailController = TextEditingController();
  final address1Controller = TextEditingController();
  final address2Controller = TextEditingController();
  final birthController = TextEditingController();
  int genderValue = 1;


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
        backgroundColor: Colors.white,
        // title: Image.asset('', width: 90),
        title: Text('회원가입', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Container(
        color: NColors.powderYellow2,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 80,
                              child: Text('아이디 *')
                          ),
                          Flexible(
                            child: RoundTextField(
                              idController,
                              '',
                              false,
                                false,
                              TextInputType.text
                            ),
                          ),
                          SizedBox(width: 10.0),
                          PinkButton(
                            Text('중복확인', style: TextStyle(color: NColors.text2)),
                            null,
                            () => {
                              print(555)
                            }
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              width: 80,
                              child: Text('비밀번호 *')
                          ),
                          Flexible(
                            child: RoundTextField(
                                passwordController,
                                '',
                                true,
                                false,
                                TextInputType.text
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              width: 80,
                              child: Text('이름 *')
                          ),
                          Flexible(
                            child: RoundTextField(
                                nameController,
                                '',
                                false,
                                false,
                                TextInputType.text
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              width: 80,
                              child: Text('닉네임')
                          ),
                          Flexible(
                            child: RoundTextField(
                                nicknameController,
                                '',
                                false,
                                false,
                                TextInputType.text
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              width: 80,
                              child: Text('전화번호 *')
                          ),
                          Flexible(
                            child: RoundTextField(
                                phoneController,
                                '',
                                false,
                                false,
                                TextInputType.text
                            ),
                          ),
                          SizedBox(width: 10.0),
                          PinkButton(
                              Text('휴대폰 인증', style: TextStyle(color: NColors.text2)),
                              100,
                              () => {
                                print(555)
                              }
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              width: 80,
                          ),
                          Flexible(
                            child: RoundTextField(
                                phoneCodeController,
                                '',
                                false,
                                false,
                                TextInputType.text
                            ),
                          ),
                          SizedBox(width: 10.0),
                          PinkButton(
                              Text('인증번호 확인', style: TextStyle(color: NColors.text2)),
                              100,
                              () => {
                                print(555)
                              }
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            width: 80,
                            child: Text('이메일주소 *')
                          ),
                          Flexible(
                            child: RoundTextField(
                                emailController,
                                '',
                                false,
                                false,
                                TextInputType.emailAddress
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              width: 80,
                              child: Text('주소 *')
                          ),
                          Flexible(
                            child: RoundTextField(
                                address1Controller,
                                '',
                                false,
                                true,
                                TextInputType.text
                            ),
                          ),
                          SizedBox(width: 10.0),
                          PinkButton(
                              Text('우편번호 검색', style: TextStyle(color: NColors.text2)),
                              100,
                              () async {
                                DataModel model = await Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => DaumPostcodeSearchPage(),
                                  ),
                                );

                                setState(() {
                                  address1Controller.text = model.address;
                                  address2Controller.text = model.buildingName;  
                                });
                                
                                // print(model.address);
                                // print(model.jibunAddress);
                                // print(model.buildingName);
                              }
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              width: 80,
                          ),
                          Flexible(
                            child: RoundTextField(
                                address2Controller,
                                '',
                                false,
                                false,
                                TextInputType.text
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              width: 80,
                              child: Text('성별 *')
                          ),
                          Radio(
                            value: 1,
                            groupValue: genderValue,
                            activeColor: NColors.powderPink2,
                            onChanged: (val) {
                              setState(() {
                                genderValue = 1;
                              });
                            },
                          ),
                          Text(
                            '남자',
                            style: new TextStyle(fontSize: 17.0)
                          ),
                          SizedBox(width: 10),
                          Radio(
                            value: 2,
                            groupValue: genderValue,
                            activeColor: NColors.powderPink2,
                            onChanged: (val) {
                              setState(() {
                                genderValue = 2;
                              });
                            },
                          ),
                          Text(
                              '여자',
                              style: new TextStyle(fontSize: 17.0)
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            width: 80,
                            child: Text('생년월일 *'),
                          ),
                          Flexible(
                            child: RoundTextField(
                                birthController,
                                'YYYYMMDD (19901025)',
                                false,
                                false,
                                TextInputType.number
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => print(1234),
                  child: Center(child: Text('회원가입', style: TextStyle(color: NColors.text2, fontSize: 16.0))),
                ),
              ),
            ),
            Container(height: 20)
          ],
        ),
      )

      // WebView(
      //   initialUrl: 'https://dev-www.pintoss.co.kr/signup#step1',
      //   javascriptMode: JavascriptMode.unrestricted,
      //   onPageStarted: (String url) {
      //     print('http url: $url');
      //     if(url == 'https://dev-www.pintoss.co.kr/signin') Navigator.pop(context, false);
      //   }
        // initialUrl: 'https://www.google.com',


    );
  }
}
