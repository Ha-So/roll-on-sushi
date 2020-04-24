import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CuisinePage extends StatefulWidget {
  final String title;

  CuisinePage({Key key, this.title}) : super(key: key);

  @override
  _CuisinePageState createState() => _CuisinePageState();
}

/*
class _CuisinePageState extends State<CuisinePage> {

  Color backColor =  Color(0xffEAE1DF);//Color(0xffA4A5A6);
  Color titleColor =  Color(0xff176AA6);//Color(0xff393D3D);
  Color buttonColor = Color(0xff7BA3A8);



  List cuisineNames =['American',
    'Cajun',
    'Chinese',
    'Greek',
    'Indian',
    'Italian',
    'Japanese',
    'Korean',
    'Mediterranean',
    'Mexican',
    'Thai'];
  List colorsData = [Colors.green,Colors.red,Colors.greenAccent,Colors.cyan,Colors.purple,Colors.yellow,Colors.blue,Colors.black,Colors.brown,Colors.orange, Colors.teal, Colors.purpleAccent, Colors.blueGrey, Colors.tealAccent, Colors.deepOrangeAccent, Colors.lightBlueAccent];
  int selectedColor = 0;
  List selectedCuisines = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
        appBar: AppBar(
          title: Text("Narrow it down..."),
          backgroundColor: Colors.black87,
        ),
        body: new Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.black12,
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            itemCount: cuisineNames.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,childAspectRatio:1),
            itemBuilder: (BuildContext context,int index){

              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  children: <Widget>[
                    new FloatingActionButton.extended(
                      label: Text(cuisineNames.elementAt(index)),
                      icon:Icon(Icons.done,color: index == selectedColor ? Colors.white :colorsData.elementAt(index),size: 28),
                      onPressed: (){
                        selectedCuisines.add(index);
                        print(selectedCuisines);
                        setState(() {
                          selectedColor = index;
                        });
                      },
                      //child: Icon(Icons.done,color: index == selectedColor ? Colors.white :colorsData.elementAt(index),size: 28),
                      backgroundColor: buttonColor,
                      elevation: 0.0,
                      heroTag: null,

                    ),
                    Offstage(
                      offstage: index != selectedColor,
                      child: Text("Chosen"),
                    ),
                  ],
                ),
              );
            },
            shrinkWrap: true,
          ),
        )
    );
  }


}


 */

class _CuisinePageState extends State<CuisinePage> {
  // Whether the green box should be visible.


  Color backColor =  Color(0xffEAE1DF);//Color(0xffA4A5A6);
  Color titleColor =  Color(0xff176AA6);//Color(0xff393D3D);
  Color buttonColor = Color(0xff7BA3A8);
  Color textBrownColor =Color(0xff4B4849);

  var cuisineNames ={'American' : false,
    'Cajun' : false,
    'Chinese' : false,
    'Greek' : false,
    'Indian' : false,
    'Italian' : false,
    'Japanese' : false,
    'Korean' : false,
    'Mediterranean' : false,
    'Mexican' : false,
    'Thai' : false};

  void onChangedName(String name, bool val) {
    cuisineNames[name] = val;
    print (cuisineNames);
  }

  //List<int> cuisineChoices = List.filled(11, 0);

  bool _isChecked = false;
  bool _isCheckedAmerican = false;
  bool _isCheckedCajun = false;
  bool _isCheckedAsian = false;
  bool _isCheckedChinese = false;
  bool _isCheckedGreek = false;
  bool _isCheckedIndian = false;
  bool _isCheckedItalian = false;
  bool _isCheckedJapanese = false;
  bool _isCheckedKorean = false;
  bool _isCheckedMediterranean = false;
  bool _isCheckedMexican = false;
  bool _isCheckedThai = false;

  @override
  Widget build(BuildContext context) {

    // The green box goes here with some other Widgets.
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
        ),
        backgroundColor: backColor,
        body: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0, top: 30.0),
              child: Container(
                height: 50,
                //color: Colors.blueGrey[900],
                child: Center(
                  child: Text('Cuisine Preference:',
                      style: TextStyle(
                          color: titleColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          fontFamily: "varela")),
                ),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 1.0,
              //color: Colors.black54,
              decoration: new BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: textBrownColor,
                    blurRadius: 20.0, // has the effect of softening the shadow
                    spreadRadius: 5.0, // has the effect of extending the shadow
                    offset: Offset(
                      10.0, // horizontal, move right 10
                      10.0, // vertical, move down 10
                    ),
                  )
                ],
             // borderRadius: new BorderRadius.all(Radius.circular(1)),
            //  gradient: new LinearGradient(),
            ),
              child: SwitchListTile(
                  title: Text('American',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: "varela")),
                  value: _isCheckedAmerican,
                  onChanged: (bool newValue) {
                    setState(() {
                      _isCheckedAmerican = newValue;
                      onChangedName('American', _isCheckedAmerican);
                    });
                    //onChangedAmerican(value);

                  }),
            ),
            Container(
              height: 50,
              //color: buttonColor,
              decoration: new BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: textBrownColor,
                    blurRadius: 50.0, // has the effect of softening the shadow
                    spreadRadius: 1.0, // has the effect of extending the shadow
                    offset: Offset(
                      10.0, // horizontal, move right 10
                      10.0, // vertical, move down 10
                    ),
                  )
                ],
                // borderRadius: new BorderRadius.all(Radius.circular(1)),
                //  gradient: new LinearGradient(),
              ),
              child: SwitchListTile(
                  title: Text('Cajun',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: "varela")),
                  value: _isCheckedCajun,
                  onChanged: (bool newValue) {
                    _isCheckedCajun = newValue;
                    setState(() {
                      onChangedName('Cajun', _isCheckedCajun);

                    });
                  }),
            ),
            Container(
              height: 50,
              color: buttonColor,
              child: SwitchListTile(
                  title: Text('Chinese',
                      style: TextStyle(
                          color: textBrownColor,
                          fontSize: 20.0,
                          fontFamily: "varela")),
                  value: _isChecked,
                  onChanged: (bool value) {
                    //onChanged(value);
                  }),
            ),
            Container(
              height: 50,
              color: buttonColor,
              child: SwitchListTile(
                  title: Text('Greek',
                      style: TextStyle(
                          color: textBrownColor,
                          fontSize: 20.0,
                          fontFamily: "varela")),
                  value: _isChecked,
                  onChanged: (bool value) {
                   // onChanged(value);
                  }),
            ),
            Container(
              height: 50,
              color: buttonColor,
              child: SwitchListTile(
                  title: Text('Indian',
                      style: TextStyle(
                          color: textBrownColor,
                          fontSize: 20.0,
                          fontFamily: "varela")),
                  value: _isChecked,
                  onChanged: (bool value) {
                    //onChanged(value);
                  }),
            ),
            Container(
              height: 50,
              color: buttonColor,
              child: SwitchListTile(
                  title: Text('Italian',
                      style: TextStyle(
                          color: textBrownColor,
                          fontSize: 20.0,
                          fontFamily: "varela")),
                  value: _isChecked,
                  onChanged: (bool value) {
                   // onChanged(value);
                  }),
            ),
            Container(
              height: 50,
              color: buttonColor,
              child: SwitchListTile(
                  title: Text('Japanese',
                      style: TextStyle(
                          color: textBrownColor,
                          fontSize: 20.0,
                          fontFamily: "varela")),
                  value: _isChecked,
                  onChanged: (bool value) {
                   // onChanged(value);
                  }),
            ),
            Container(
              height: 50,
              color: buttonColor,
              child: SwitchListTile(
                  title: Text('Korean',
                      style: TextStyle(
                          color: textBrownColor,
                          fontSize: 20.0,
                          fontFamily: "varela")),
                  value: _isChecked,
                  onChanged: (bool value) {
                   // onChanged(value);
                  }),
            ),
            Container(
              height: 50,
              color: buttonColor,
              child: SwitchListTile(
                  title: Text('Mediterranean',
                      style: TextStyle(
                          color: textBrownColor,
                          fontSize: 20.0,
                          fontFamily: "varela")),
                  value: _isChecked,
                  onChanged: (bool value) {
                   // onChanged(value);
                  }),
            ),
            Container(
              height: 50,
              color: buttonColor,
              child: SwitchListTile(
                  title: Text('Mexican',
                      style: TextStyle(
                          color: textBrownColor,
                          fontSize: 20.0,
                          fontFamily: "varela")),
                  value: _isChecked,
                  onChanged: (bool value) {
                   // onChanged(value);
                  }),
            ),
            Container(
              height: 50,
              color: buttonColor,
              child: SwitchListTile(
                  title: Text('Thai',
                      style: TextStyle(
                          color: textBrownColor,
                          fontSize: 20.0,
                          fontFamily: "varela")),
                  value: _isChecked,
                  onChanged: (bool value) {
                   // onChanged(value);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}



//---------------------------------------------------------------------------------------------------------------------------------------
// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.

/*
class _CuisinePageState extends State<CuisinePage> {
  // Whether the green box should be visible.
  bool _isChecked = false;
  void onChanged(bool value) {
    setState(() {
      _isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color backColor = Color(0xffA4A5A6);
    // The green box goes here with some other Widgets.
    return SafeArea(
      child: Scaffold(
        backgroundColor: backColor,
        appBar: AppBar(
            title: Center(
                child: Text('Cuisine Preference',
                    style: TextStyle(fontFamily: 'Varela', color: Colors.white))),
            backgroundColor: Colors.grey[900]),
        body: new Column(
          children: <Widget>[
            new Checkbox(
                value: _isChecked,
                onChanged: (bool value) {
                  onChanged(value);
                }),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 1,
          color: Colors.grey[900],
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.red,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.local_dining),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.drive_eta),
                color: backColor,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.attach_money),
                color: backColor,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.star_half),
                color: backColor,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.call_split),
                color: backColor,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
