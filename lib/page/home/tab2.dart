import 'package:flutter/material.dart';
import 'package:knotted/theme/n_colors.dart';

import 'best_menu.dart';
import 'event_carousel.dart';
import 'home_user_info.dart';
import 'notice_carousel.dart';

class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("예약", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:  Column(
              children: [
                Expanded(child: Container()),
                Material(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () => print(1234),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      height: 100,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset('images/icon_calender.png'),
                            ),
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('날짜선택', style: TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 10),
                                Text('예약 원하시는 날짜가 있다면\n날짜를 먼저 선택해주세요.'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Material(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () => print(1234),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      height: 100,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset('images/logo_smile.png'),
                            ),
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('메뉴선택', style: TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 10),
                                Text('구매 원하시는 메뉴가 있다면\n메뉴를 먼저 선택해주세요.'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100),
                Expanded(child: Container()),
                // HomeUserInfo(),
                // BestMenu(),
                // NoticeCarousel(),
                // EventCarousel(),
              ],
            ),
          ),
        ),
      ),
    );
  }

}