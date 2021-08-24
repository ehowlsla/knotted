import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/home.dart';
import 'theme/n_colors.dart';

void main() {
  runApp(GetMaterialApp(
      title: '굿핀',
      initialRoute: 'home',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: AppHome()
  ));
}

// class MyApp extends StatelessWidget {
//   static const String _title = 'Instagram clone';
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: AppHome(),
//       theme: ThemeData(
//           primaryColor: Colors.white
//       ),
//     );
//   }
// }

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

// 아이콘이 클릭되었을 때 보여줄 widget 화면.
// 첫 아이콘(홈)에만 Text를 넣어주고 나머지는 Plcaeholder(임시 위젯)을 넣었다.
class _AppHomeState extends State<AppHome> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [
    Home(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];

  // 아이콘이 클릭되었을 때의 이벤트 리스너
  // 클릭된 인덱스로 _selectedIndex에 할당하고 build 함수를 호출한다(setState)
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget getTabIcon(int index) {
    if(index == _selectedIndex) return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Image.asset('images/icon_tab_0${index + 1}_on.png', width: 20),
    );
    else return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Image.asset('images/icon_tab_0${index + 1}.png', width: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Instagram'),
      // ),
      // body에 넣어줄 아이템
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(


        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedFontSize: 12.0,
        backgroundColor: NColors.powderGrey,
        unselectedFontSize: 12.0,
        items: [
          BottomNavigationBarItem(
            // 현재 아이콘이 선택된 아이콘일때와 선택된 아이콘이 아닌 경우 Icon을 다르게 하기 위함
              icon: getTabIcon(0),

              label: '스마일오더'
          ),
          BottomNavigationBarItem(
              icon: getTabIcon(1),
              label: '예약'
          ),
          BottomNavigationBarItem(
              icon: getTabIcon(2),
              label: '홈'
          ),
          BottomNavigationBarItem(
              icon: getTabIcon(3),
              label: '스마일샵'
          ),
          BottomNavigationBarItem(
              icon: getTabIcon(4),
              label: '전체'
          )
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        // onTap: _onItemTapped,
        // type: BottomNavigationBarType.fixed, //(2)
      ),
    );
  }

}