import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:knotted/page/store_detail.dart';
import 'package:knotted/theme/n_colors.dart';
// import 'package:pintoss/api/apiProvider.dart';
// import 'package:pintoss/api/models/resDefault.dart';
// import 'package:shared_preferences/shared_preferences.dart';


class StoreSearch extends StatelessWidget {
//   @override
//   _StoreSearchState createState() => _StoreSearchState();
// }


// class _StoreSearchState extends State<StoreSearch> {

  TextEditingController textSearchController  = TextEditingController();

  Widget _orderAble = Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      color: NColors.powderPink2,
      borderRadius: BorderRadius.all(Radius.circular(25.0)),
    ),
    child: Center(
      child: Text(
        '주문\n가능 ',
        textAlign: TextAlign.center,
        style: TextStyle(color: NColors.textPink, fontSize: 12.0),
      ),
    ),
  );

  Widget _orderDisable = Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      color: NColors.disableGrey,
      borderRadius: BorderRadius.all(Radius.circular(25.0)),
    ),
    child: Center(
      child: Text(
        '주문\n불가 ',
        textAlign: TextAlign.center,
        style: TextStyle(color: NColors.white, fontSize: 12.0),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Image.asset('images/icon_back.png', width: 10.0),
            onPressed: () => Navigator.pop(context, false),
          ),
          title: TextField(
            controller: textSearchController,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: Image.asset('images/icon_map.png', width: 18.0),
              onPressed: () => print(134)
            ),
          ],
          bottom: TabBar(
            indicatorColor: NColors.powderPink,
            tabs: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
                child: Text('가까운 매장'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
                child: Text('즐겨찾는 매장'),
              ),
            ]
          ),
          centerTitle: true,
        ),
        body: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: 10,
            separatorBuilder: (context, index) {
              return const Divider(
                thickness: 0.5,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () => Get.to(StoreDetail()),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('청담점 (500m)', style: TextStyle(color: NColors.text1, fontSize: 16.0)),
                            Text('서울 강남구 도산대로 53길', style: TextStyle(color: NColors.text2)),

                          ],
                        ),
                      ),
                      index % 2 == 1 ? _orderAble : _orderDisable
                    ],
                  ),
                ),
              );
            }

        )
      ),
    );
  }
}
