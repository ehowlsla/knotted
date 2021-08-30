import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knotted/page/store_search.dart';
import 'package:knotted/theme/n_colors.dart';


class SmileOrder extends StatelessWidget {

  final List menus = [
    '전체',
    '커피',
    '도넛',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(

          centerTitle: true,
          title: Text("스마일오더"),

          // leading: Image.asset("your_image_asset"),
          actions: <Widget>[
            IconButton(icon: Image.asset("images/icon_search.png", width: 20.0,), onPressed: () {}),
            IconButton(icon: Image.asset("images/icon_cart.png", width: 20.0,), onPressed: () {}),
            SizedBox(width: 10.0)
          ],
          bottom: TabBar(
            tabs: menus.map((e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Text(e),
            )).toList()
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.all(8),
                    itemCount: 10,
                      separatorBuilder: (context, index) {
                        return const Divider(
                            thickness: 0.5,
                        );
                      },
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(

                        leading: Image.asset('images/icon_user.png', height: 20.0),
                        title: Text('abd'),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('abd'),
                            Text('abd1243'),
                          ],
                        ),
                        horizontalTitleGap: 2.0,
                        minVerticalPadding: 5.0,
                      );

                    }
                  ),
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: NColors.powderYellow,
                        width: 5.0
                    )
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => Get.to(StoreSearch()),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                            child: Image.asset('images/icon_pin.png', height: 20.0),
                          ),
                          Expanded(child: Text('청담점')),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(4)),
                                border: Border.all(
                                  color: NColors.borderGrey,
                                  width: 1.0
                                )
                              ),

                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                                child: Text('변경', style: TextStyle(color: NColors.text4)),
                              )
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(child: Container()),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Container(
                      width: 35,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                        color: NColors.powderYellow
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => print(1234),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset('images/icon_barcode.png', height: 5.0),
                          ),
                        ),
                      ),
                      // color: Colors.red,
                    ),
                  ],
                ),
                SizedBox(height: 100),
              ],
            )
          ],
        )
        // TabBarView(
        //   physics: const NeverScrollableScrollPhysics(),
        //   children: [
        //     Icon(Icons.directions_car),
        //     Icon(Icons.directions_transit),
        //     Icon(Icons.directions_bike),
        //   ],
        // ),
      ),
    );
  }

}