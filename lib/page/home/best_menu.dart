import 'package:flutter/material.dart';

class BestMenu extends StatefulWidget {
  @override
  _BestMenuState createState() => _BestMenuState();
}

class _BestMenuState extends State<BestMenu> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "BEST (인기/추천메뉴)",
              style: TextStyle(fontSize: 30.0),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage('https://www.woolha.com/media/2020/03/eevee.png'),
            )
          ],
        ),
      ),
    );
  }

}