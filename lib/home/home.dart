import 'package:flutter/material.dart';

import 'best_menu.dart';
import 'event_carousel.dart';
import 'home_user_info.dart';
import 'notice_carousel.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight
            ),
            child: Column(
              children: [
                HomeUserInfo(),
                BestMenu(),
                NoticeCarousel(),
                EventCarousel(),
              ],
            ),
          ),
        );
      }
    );
  }

}