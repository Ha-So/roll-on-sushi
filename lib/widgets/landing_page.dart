import 'package:flutter/material.dart';
import 'package:rollonsushi/widgets/cuisine_page.dart';

import '../main.dart';
import 'about_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Color backColor =  Color(0xffEAE1DF);//Color(0xffA4A5A6);
  Color titleColor =  Color(0xff176AA6);//Color(0xff393D3D);
  Color buttonColor =  Color(0xff176AA6);
  Color textBrownColor =Color(0xff4B4849);

  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      maintainBottomViewPadding: true,
        child: Scaffold(
      backgroundColor: backColor,
      body:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[ Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Image.asset('images/newlogo.png')
            ),
              Padding(
                padding: EdgeInsets.only(bottom: 40.0),
                child: Center(
                  child: Text(
                    'ROLL/ON/SUSHI',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontFamily: "zeyada",
                        fontWeight: FontWeight.bold,
                        color: titleColor),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 220.0),
                child: Text(
                  'Where we decide lunch for you.',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: "varela",
                      fontStyle: FontStyle.italic,
                      color: titleColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Container(
                  child: FloatingActionButton.extended(
                    heroTag: "btn1",
                    icon: const Icon(Icons.insert_emoticon),
                    label: Text('What is this, where am I?',
                        style: TextStyle(color: Colors.white)),
                    backgroundColor: buttonColor,
                    onPressed: () {
                    Navigator.push(context, FadeRoute(page: AboutPage()));
                      // Add your onPressed code here!
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Container(
                  child: FloatingActionButton.extended(
                    heroTag: "btn2",
                    icon: const Icon(Icons.fastfood),
                    label: Text('I\'m hungry!',
                        style: TextStyle(color: Colors.white)),
                    backgroundColor: buttonColor,
                    onPressed: () {
                      Navigator.push(context, FadeRoute(page: CuisinePage()));
                    },
                  ),
                ),
              ),
            ],
          ),
      ),
    );

    // );
    //return Text('Home Page');
  }
}
