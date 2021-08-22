import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class JoinPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => JoinPageState();
}

class JoinPageState extends State<JoinPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
        title: Image.asset('', width: 90),
        centerTitle: true,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: WebView(
        initialUrl: 'https://dev-www.pintoss.co.kr/signup#step1',
        javascriptMode: JavascriptMode.unrestricted,
        onPageStarted: (String url) {
          print('http url: $url');
          if(url == 'https://dev-www.pintoss.co.kr/signin') Navigator.pop(context, false);
        }
        // initialUrl: 'https://www.google.com',

      )
    );
  }
}
