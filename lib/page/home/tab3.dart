import 'package:flutter/material.dart';
import 'package:knotted/theme/n_colors.dart';

import 'best_menu.dart';
import 'event_carousel.dart';
import 'home_user_info.dart';
import 'notice_carousel.dart';

class Tab3 extends StatefulWidget {
  @override
  _Tab3State createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: NColors.powderPink2,
      child: SafeArea(
        child: Container(
          color: Colors.white,
          child: LayoutBuilder(
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
          ),
        ),
      ),
    );
  }

}