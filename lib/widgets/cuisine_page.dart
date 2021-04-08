import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:multi_select_flutter/multi_select_flutter.dart';

class CuisineType {
  final int id;
  final String name;

  CuisineType({
    this.id,
    this.name,
  });
}

class CuisinePage extends StatefulWidget {
  final String title;

  CuisinePage({Key key, this.title}) : super(key: key);

  @override
  _CuisinePageState createState() => _CuisinePageState();
}

class _CuisinePageState extends State<CuisinePage> {

  Color titleColor = Color(0xff4B4849); // Color(0xff393D3D);
  Color backColor = Color(0xffEAE1DF); //Color(0xffA4A5A6);
  Color buttonColor = Color(0xff176AA6);


  static List<CuisineType> _cuisinetypes = [
    CuisineType(id: 1, name: "American"),
    CuisineType(id: 2, name: "Cajun"),
    CuisineType(id: 3, name: "Chinese"),
    CuisineType(id: 4, name: "Greek"),
    CuisineType(id: 5, name: "Indian"),
    CuisineType(id: 6, name: "Italian"),
    CuisineType(id: 7, name: "Japanese"),
    CuisineType(id: 8, name: "Korean"),
    CuisineType(id: 9, name: "Thai"),
    CuisineType(id: 10, name: "Mexican"),
    CuisineType(id: 11, name: "Mediterranean")
  ];
  final _items = _cuisinetypes
      .map((cuisinetype) => MultiSelectItem<CuisineType>(cuisinetype, cuisinetype.name))
      .toList();
  List<CuisineType> _selectedCuisines5 = [];
  final _multiSelectKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    _selectedCuisines5 = _cuisinetypes;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backColor,
        appBar: AppBar(
          title:  Text(
          "Roll/On/Sushi",
          textAlign: TextAlign.end,
        style: TextStyle(
        fontSize: 20.0,
        fontFamily: "varela",
        fontStyle: FontStyle.normal,
    ),),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ), //IconButton
          ], //<Widget>[]
          backgroundColor: Colors.black87,
          elevation: 50.0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu Icon',
            onPressed: () {},
          ), //IconButton
          brightness: Brightness.dark,
        ), //AppBar

      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Column(

            children: <Widget>[
              SizedBox(height: 40),
              //################################################################################################
              // MultiSelectChipField
              //################################################################################################
              MultiSelectChipField(
                //chipWidth: 50,
                items: _items,
                initialValue: [_cuisinetypes[4], _cuisinetypes[7], _cuisinetypes[9]],
                title: Text("Cuisines"  ,  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "",
                    fontStyle: FontStyle.italic,
                    color: titleColor),), icon: const Icon(Icons.check),
                headerColor: Colors.black87.withOpacity(0.0),
                chipColor: buttonColor,
                textStyle: (TextStyle(
                  fontSize: 20.0,
                  fontFamily: "varela",
                  fontStyle: FontStyle.italic,
                  color: Colors.white
                )),
                decoration: BoxDecoration(

                 //border: Border.all(color: Colors.blue[700], width: 1.8),
                ),
                selectedChipColor: buttonColor.withOpacity(0.5),
                selectedTextStyle: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Varela",
                    fontStyle: FontStyle.normal,
                    color: Colors.white
                ),
                onTap: (values) {
                  _selectedCuisines5 = values;
                },
              ),
             SizedBox(height: 40),

              //################################################################################################
              // MultiSelectChipField 2
              //################################################################################################
              MultiSelectChipField(
                //chipWidth: 50,
                items: _items,
                initialValue: [_cuisinetypes[4], _cuisinetypes[7], _cuisinetypes[9]],
                title: Text("Distance"), icon: const Icon(Icons.check),
                headerColor: Colors.black87.withOpacity(0.0),
                chipColor: buttonColor,
                textStyle: (TextStyle(
                    fontSize: 20.0,
                    fontFamily: "varela",
                    fontStyle: FontStyle.normal,
                    color: Colors.white
                )),
                decoration: BoxDecoration(

                  //border: Border.all(color: Colors.blue[700], width: 1.8),
                ),
                selectedChipColor: buttonColor.withOpacity(0.5),
                selectedTextStyle: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "varela",
                    fontStyle: FontStyle.normal,
                    color: Colors.white
                ),
                onTap: (values) {
                  _selectedCuisines5 = values;
                },
              ),

            ],
          ),
        ),
      ),

    ),
    ) ;
  }
}

