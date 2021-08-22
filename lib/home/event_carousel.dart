import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class EventCarousel extends StatefulWidget {
  @override
  _EventCarouselState createState() => _EventCarouselState();
}

final List<String> textList = [
  '[이벤트] 노티드 100호점 오픈',
  '[이벤트] 노티드 101호점 오픈',
  '[이벤트] 노티드 102호점 오픈',
  '[이벤트] 노티드 103호점 오픈',
  '[이벤트] 노티드 104호점 오픈',
  '[이벤트] 노티드 10호점 오픈',
];

class _EventCarouselState extends State<EventCarousel> {


  final List<Widget> textWidgetList = textList.map((item) => Text(item)).toList();

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
      child:  CarouselSlider(

        options: CarouselOptions(
          height: 50,
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: textWidgetList,
      ),
    );
  }

}