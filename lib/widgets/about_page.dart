import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'cuisine_page.dart';

class AboutPage extends StatefulWidget {
  final String? title;

  AboutPage({Key? key, this.title}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  Color titleColor = Color(0xff4B4849); // Color(0xff393D3D);
  Color backColor = Colors.white; //Color(0xffA4A5A6);
  Color buttonColor = Color(0xff176AA6);

  Padding _GenerateButtonPadding() {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .5,
          bottom: MediaQuery.of(context).size.height * .5),
      child: RawMaterialButton(
        elevation: 5.0,
        //heroTag: "btn3",
        shape: CircleBorder(),
        fillColor: buttonColor,
        onPressed: () {
          Navigator.push(context, FadeRoute(page: CuisinePage()));
        },
        child: Icon(
          Icons.fastfood,
          color: Colors.white,
          size: 20.0,
        ),
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
      ),
    );
  }

  Padding _GenerateTextContainer(String val) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Container(
        color: backColor,
        height: MediaQuery.of(context).size.height * 1,
        child: Center(
          child: Text(
            val,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: titleColor, fontSize: 20.0, fontFamily: "varela"),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  _GenerateTextContainer('Ever not know what to eat?'),
                  _GenerateTextContainer('Overwhelmed with choices?'),
                  _GenerateTextContainer('Roll/On/Sushi can help you decide!'),
                  _GenerateTextContainer(
                      'Simply tap the \"I\'m Hungry\" button'),
                  _GenerateTextContainer('Tap the cuisines you want...'),
                  _GenerateTextContainer('And we can pick your next meal!'),
                  _GenerateTextContainer('Go on...give it a tap.'),
                  _GenerateButtonPadding(),
                  _GenerateTextContainer(
                      'All jokes aside, seriously just tap it. '),
                  _GenerateButtonPadding(),
                  _GenerateTextContainer(
                      'Well, since you are refusing to use the app and just scrolling aimlessly here instead I suppose we could just chat.'),
                  _GenerateTextContainer(
                      'What does Roll On Sushi mean? Glad you asked. The app essentially narrows '
                      'down some places based on you preference, then \"rolls\" the dice to choose one for you based off these factors.'
                      ' cv The other meaning here is you can purchase Sushi rolls, which I quite enjoy. So when using this app I literally'
                      ' rolling my dice to land on Sushi so I can get some Sushi rolls.'),
                  _GenerateTextContainer(
                      'My favorite author is Albert Camus, a renowed French philosopher and the father of Absurdism. Check out his novel, The Stranger.'),
                  _GenerateTextContainer(
                      'This is the part you tell me about yourself. I\'m listening.'),
                  _GenerateTextContainer(
                      'That was just a joke, you\'re actually having a conversation with Text widgets wrapped in Containers right now!'),
                  _GenerateTextContainer(
                      'Alright, last chance. Give it a tap.'),
                  _GenerateButtonPadding()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
