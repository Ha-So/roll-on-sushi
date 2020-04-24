import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  final String title;

  AboutPage({Key key, this.title}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  Color titleColor =Color(0xff4B4849);// Color(0xff393D3D);
  Color backColor =  Color(0xffEAE1DF);//Color(0xffA4A5A6);

  @override
  Widget build(BuildContext context) {
    //Color backColor = Colors.lightGreen[200];//Color(0xffA4A5A6);
    // The green box goes here with some other Widgets.
    return SafeArea(
      child: Scaffold(
        backgroundColor: backColor,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.black87,
              pinned: true,
              // snap: true,
              //floating: true,
              expandedHeight:
                  MediaQuery.of(context).size.height * 0.80, // 100.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: SizedBox(
                  height: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Let us take a scroll...",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: "varela",
                          fontStyle: FontStyle.italic,
                        ),
                        //Text("This is Roll/On/Sushi", textAlign: TextAlign.center),
                        // Text("Should be centered", textAlign: TextAlign.center)
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                      color: backColor,
                      height: MediaQuery.of(context).size.height * .5,
                      child: Center(
                        child: Text('Ever not know what to eat?',
                            maxLines: 1,
                            style: TextStyle(
                                color: titleColor,
                                fontSize: 20.0,
                                fontFamily: "varela")),
                      )),
                  Container(
                      color: backColor,
                      height: MediaQuery.of(context).size.height * .5,
                      child: Center(
                        child: Text('Overwhelmed with choices?',
                            maxLines: 1,
                            style: TextStyle(
                                color: titleColor,
                                fontSize: 20.0,
                                fontFamily: "varela")),
                      )),
                  Container(
                      color: backColor,
                      height: MediaQuery.of(context).size.height * .5,
                      child: Center(
                        child: Text('Roll/On/Sushi can help you decide!',
                            maxLines: 2,
                            style: TextStyle(
                                color: titleColor,
                                fontSize: 20.0,
                                fontFamily: "varela")),
                      )),
                  Container(
                      color: backColor,
                      height: MediaQuery.of(context).size.height * .5,
                      child: Center(
                        child: Text('Simply tap the \"I\'m Hungry\" button',
                            maxLines: 1,
                            style: TextStyle(
                                color: titleColor,
                                fontSize: 20.0,
                                fontFamily: "varela")),
                      )),
                  Container(
                      color: backColor,
                      height: MediaQuery.of(context).size.height * .5,
                      child: Center(
                        child: Text('Tap the cuisines you want...',
                            maxLines: 1,
                            style: TextStyle(
                                color: titleColor,
                                fontSize: 20.0,
                                fontFamily: "varela")),
                      )),
                  Container(
                      color: backColor,
                      height: MediaQuery.of(context).size.height * .5,
                      child: Center(
                        child: Text( 'And we can pick your next meal!',

                            style: TextStyle(

                                color: titleColor,
                                fontSize: 20.0,
                                fontFamily: "varela")),
                      )),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
