import 'package:flutter/material.dart';

class HomeUserInfo extends StatefulWidget {
  @override
  _HomeUserInfoState createState() => _HomeUserInfoState();
}

class _HomeUserInfoState extends State<HomeUserInfo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
        ),
      ), //  POINT: BoxDecoration
      child: Column(
        children: [
          Text(
            "회원가입 후 다양한 혜택을 누려보세요!",
            style: TextStyle(fontSize: 16.0),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: () => print(1), child: Text('회원가입')),
              TextButton(onPressed: () => print(1), child: Text('로그인'))
            ],
          )
        ],
      ),
    );
  }

}