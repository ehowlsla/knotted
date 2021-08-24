import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knotted/login/login.dart';
import 'package:knotted/theme/n_colors.dart';

class HomeUserInfo extends StatefulWidget {
  @override
  _HomeUserInfoState createState() => _HomeUserInfoState();
}

class _HomeUserInfoState extends State<HomeUserInfo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      color: NColors.powderPink2,
      child: SafeArea(
        child: Column(
          children: [
            Image.asset('images/logo_title.png', height: 30.0),
            SizedBox(height: 5.0),
            Container(
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 0.5,
                  color: NColors.borderGrey,

                ),
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
              ), //  POINT: BoxDecoration
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100.0,
                    child: Align(
                      alignment: Alignment.centerLeft,

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0,),
                        child: Text(
                          "회원가입 후\n다양한 혜택을 누려보세요.",
                          style: TextStyle(fontSize: 14.0, color: NColors.text2),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: NColors.borderGrey,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                              height: 50.0,
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () => print(1234),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('images/icon_user.png', height: 18.0),
                                      SizedBox(width: 10.0),
                                      Text('회원가입', style: TextStyle(color: NColors.text2)),
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),
                        Container(
                          width: 1.0,
                          height: 50.0,
                          color: NColors.borderGrey,
                        ),
                        Expanded(
                            child: Container(
                              height: 50.0,
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () => print(1234),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('images/icon_lock.png', height: 18.0),
                                      SizedBox(width: 10.0),
                                      Text('로그인', style: TextStyle(color: NColors.text2)),
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}