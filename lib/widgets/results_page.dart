import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'cuisine_page.dart';


class ResultsPage extends StatefulWidget {
  final String title;

  ResultsPage({Key key, this.title}) : super(key: key);

  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  Color titleColor = Color(0xff4B4849); // Color(0xff393D3D);
  Color backColor = Colors.white; //Color(0xffA4A5A6);
  Color buttonColor = Color(0xff176AA6);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backColor
      ),
    );
  }
}
