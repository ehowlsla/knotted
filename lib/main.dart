import 'package:flutter/material.dart';

import 'home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Instagram clone';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      theme: ThemeData(
          primaryColor: Colors.white
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

// 아이콘이 클릭되었을 때 보여줄 widget 화면.
// 첫 아이콘(홈)에만 Text를 넣어주고 나머지는 Plcaeholder(임시 위젯)을 넣었다.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
      ),
      // body에 넣어줄 아이템
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            // 현재 아이콘이 선택된 아이콘일때와 선택된 아이콘이 아닌 경우 Icon을 다르게 하기 위함
              icon: _selectedIndex == 0? Icon(Icons.home_filled, color: Colors.black,): Icon(Icons.home_outlined, color: Colors.black),
              label: 'home'
          ),
          BottomNavigationBarItem(
              icon: _selectedIndex == 1? Icon(Icons.search, color: Colors.black,):  Icon(Icons.search_off, color: Colors.black,),
              label: 'search'
          ),
          BottomNavigationBarItem(
              icon: _selectedIndex == 2? Icon(Icons.shopping_bag, color: Colors.black,): Icon(Icons.shopping_bag_outlined, color: Colors.black),
              label: 'media'
          ),
          BottomNavigationBarItem(
              icon: _selectedIndex == 3? Icon(Icons.movie, color: Colors.black,): Icon(Icons.movie_outlined, color: Colors.black,),
              label: 'shop'
          ),
          BottomNavigationBarItem(
              icon: _selectedIndex == 4? Icon(Icons.person, color: Colors.black): Icon(Icons.person_outline, color: Colors.black,),
              label: 'profile'
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        showSelectedLabels: false, //(1)
        showUnselectedLabels: false, //(1)
        type: BottomNavigationBarType.fixed, //(2)
      ),
    );
  }

}