import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CuisinePage extends StatefulWidget {
  final String title;

  CuisinePage({Key key, this.title}) : super(key: key);

  @override
  _CuisinePageState createState() => _CuisinePageState();
}

class _CuisinePageState extends State<CuisinePage> {

  List<String> reportList = [
    'American',
    'Cajun',
    'Chinese',
    'Greek',
    'Indian',
    'Italian',
    'Japanese',
    'Korean',
    'Mediterranean',
    'Mexican',
    'Thai'
  ];

  List<String> selectedReportList = List();

  _showReportDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          //Here we will build the content of the dialog
          return AlertDialog(
            title: Text("Any preference?"),
            content: MultiSelectChip(
              reportList,
              onSelectionChanged: (selectedList) {
                setState(() {
                  selectedReportList = selectedList;
                });
              },
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("SAVE"),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });

    print(selectedReportList);
  }
  // Whether the green box should be visible.

  Color backColor = Color(0xffEAE1DF); //Color(0xffA4A5A6);
  Color titleColor = Color(0xff176AA6); //Color(0xff393D3D);
  Color buttonColor = Color(0xff7BA3A8);
  Color textBrownColor = Color(0xff4B4849);

  var cuisineNames = {
    'American': false,
    'Cajun': false,
    'Chinese': false,
    'Greek': false,
    'Indian': false,
    'Italian': false,
    'Japanese': false,
    'Korean': false,
    'Mediterranean': false,
    'Mexican': false,
    'Thai': false
  };

  void onChangedName(String name, bool val) {
    cuisineNames[name] = val;
    print(cuisineNames);
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
          centerTitle: true,
          title:   Text(
            "Just a few taps...",
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 15.0,
              fontFamily: "varela",
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Colors.black87,
        ),
        backgroundColor: backColor,
        body: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: FloatingActionButton.extended(
                  backgroundColor: buttonColor,
                  //shape: CircleBorder(),
                  label: Text("Cuisine Preference"),
                  onPressed: () => _showReportDialog(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  final Function(List<String>) onSelectionChanged;

  MultiSelectChip(this.reportList, {this.onSelectionChanged});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  // String selectedChoice = "";
  List<String> selectedChoices = List();

  _buildChoiceList() {
    List<Widget> choices = List();

    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(item),
          selected: selectedChoices.contains(item),
          onSelected: (selected) {
            setState(() {
              selectedChoices.contains(item)
                  ? selectedChoices.remove(item)
                  : selectedChoices.add(item);
              widget.onSelectionChanged(selectedChoices);
            });
          },
        ),
      ));
    });

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}