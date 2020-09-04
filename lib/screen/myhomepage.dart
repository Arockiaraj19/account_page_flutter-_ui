import 'package:account_page/widget.dart/scrollpart.dart';
import 'package:account_page/widget.dart/top_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopPage(),
              ScrollPart(),
            ],
          ),
        ]),
      ),
    );
  }
}
