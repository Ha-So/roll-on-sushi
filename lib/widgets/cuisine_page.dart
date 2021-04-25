import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:rollonsushi/widgets/results_page.dart';

import '../main.dart';
import 'about_page.dart';


class CuisinePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _CuisinePageState();
}

class _CuisinePageState extends State<CuisinePage> {
  Color titleColor = Color(0xff4B4849); // Color(0xff393D3D);
  Color backColor = Colors.white; //Color(0xffA4A5A6);
  Color buttonColor = Color(0xff176AA6);
  Color subColor =  Color(0xff176AA6);//Color(0xff393D3D);

  GlobalKey<ScaffoldState> _key;
  bool _isSelected;
  List<CompanyWidget> _companies;
  List<String> _filters;
  List<String> _choices;
  List<String> _ratings;
  int _choiceIndex;
  int _ratingIndex;


  @override
  void initState() {
    super.initState();
    _key = GlobalKey<ScaffoldState>();
    _isSelected = false;
    _choiceIndex = 0;
    _filters = <String>[];
    _companies = <CompanyWidget>[
      CompanyWidget('American'),
      CompanyWidget('Cajun'),
      CompanyWidget('Chinese'),
      CompanyWidget('Italian'),
      CompanyWidget('Japanese'),
      CompanyWidget('Greek'),
      CompanyWidget('Indian'),
      CompanyWidget('Korean'),
      CompanyWidget('Thai'),
    ];
    _choices = ["5 Miles","10 Miles",
      "20 Miles"];

    _ratings = ["1 Star", "2 Star", "3 Star", "4 Star", "5 Star"];
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea( child:Scaffold( backgroundColor: backColor,
      key: _key,
      appBar: AppBar(
        shadowColor: Colors.blueAccent,
        elevation: 40,
        toolbarHeight: 70,
        backgroundColor: Color(0xff176AA6),
        title:
        Text('ROLL/ON/SUSHI',
          style: TextStyle(
              fontSize: 40.0,
              fontFamily: "zeyada",
              fontWeight: FontWeight.bold,
              color: Colors.white,
          ),),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.done_outline_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context, FadeRoute(page: ResultsPage(text: 'Hello',)));
            },
          )
        ],
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(child: Text('Cuisines' , style: TextStyle(
        fontSize: 20.0,
            fontFamily: "varela",
            //fontStyle: FontStyle.italic,
            color: subColor),),padding: const EdgeInsets.only(top: 15.0)),
           // chipList(),
           // _buildActionChips(),
            //_buildInputChips(),
            Wrap(
              children: companyPosition.toList(),
            ),
            Container(child: Text('Distance', style: TextStyle(
                fontSize: 20.0,
                fontFamily: "varela",
                //fontStyle: FontStyle.italic,
                color: subColor),),padding: const EdgeInsets.only(top: 15.0)),
            _buildChoiceChips(),
            Container(child: Text('Rating', style: TextStyle(
                fontSize: 20.0,
                fontFamily: "varela",
                //fontStyle: FontStyle.italic,
                color: subColor),),padding: const EdgeInsets.only(top: 15.0)),
           _buildChoiceChipsRating()
          ],
        ),


      ),
    ),);
  }

  Widget _buildChoiceChips() {
    return Container(
      height: MediaQuery.of(context).size.height/5,
      child: ListView.builder(
        itemCount: _choices.length,
        itemBuilder: (BuildContext context, int index) {
          return ChoiceChip(
            label: Text(_choices[index]),
            selected: _choiceIndex == index,
            selectedColor:  Colors.green,
            onSelected: (bool selected) {
              setState(() {
                _choiceIndex = selected ? index : 0;
              });
            },
            backgroundColor: Color(0xff176AA6),
            labelStyle: TextStyle(color: Colors.white),
          );
        },
      ),
    );
  }

  Padding _starContainer(int intVal){
    List<String> _stringOptions = ["1", "2", "3", "4", "5"];
    String _strChoice = _stringOptions[intVal];
    if (intVal == 0){
      return Padding(
          padding: EdgeInsets.only(
              top: 1),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Text(_strChoice),
                Icon(
                    Icons.star_border,
                    color: Colors.white
                )
              ]



          )
      );

    }
    else if (intVal == 1){
      return Padding(
          padding: EdgeInsets.only(
              top: 1),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Text(_strChoice),
                Icon(
                    Icons.star_border,
                    color: Colors.white
                ),
                Icon(
                    Icons.star_border,
                    color: Colors.white
                ),
              ]



          )
      );

    }
    else if (intVal == 2){
      return Padding(
          padding: EdgeInsets.only(
              top: 1),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Text(_strChoice),
                Icon(
                    Icons.star_border,
                    color: Colors.white
                ),
                Icon(
                    Icons.star_border,
                    color: Colors.white
                ),
                Icon(
                    Icons.star_border,
                    color: Colors.white
                ),
              ]



          )
      );

    }
    if (intVal == 3){
      return Padding(
          padding: EdgeInsets.only(
              top: 1),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Text(_strChoice),
                Icon(
                    Icons.star_border,
                    color: Colors.white
                ),
                Icon(
                    Icons.star_border,
                    color: Colors.white
                ),
                Icon(
                    Icons.star_border,
                    color: Colors.white
                ),
                Icon(
                    Icons.star_border,
                    color: Colors.white
                ),
              ]



          )
      );

    }
    if (intVal == 4){
      return Padding(
          padding: EdgeInsets.only(
              top: 1),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Text(_strChoice),
                Icon(
                    Icons.star_border,
                    color: Colors.white
                ),
                Icon(
                    Icons.star_border,
                    color: Colors.white
                ),
                Icon(
                    Icons.star_border,
                    color: Colors.white
                ),
                Icon(
                    Icons.star_border,
                    color: Colors.white
                ),
                Icon(
                    Icons.star_border,
                    color: Colors.white
                ),
              ]



          )
      );

    }
  }


  Widget _buildChoiceChipsRating() {
    return Container(
      height: MediaQuery.of(context).size.height/4,
      child: ListView.builder(
        itemCount: _ratings.length,
        itemBuilder: (BuildContext context, int index) {
          return ChoiceChip(padding: const EdgeInsets.all(6.0),
            label: Container(
            width: 120,
            height: 20,
            child: _starContainer(index)) ,//_ratings[index],
            selected: _ratingIndex == index,
            selectedColor:  Colors.green,
            onSelected: (bool selected) {
              setState(() {
                _ratingIndex = selected ? index : 0;
              });
            },
            backgroundColor: Color(0xff176AA6),
            labelStyle: TextStyle(color: Colors.white),
          );
        },
      ),
    );
  }



  Iterable<Widget> get companyPosition sync* {
    for (CompanyWidget company in _companies) {
      yield Padding(
        padding: const EdgeInsets.all(6.0),
        child: FilterChip(
          backgroundColor: Color(0xff176AA6),
          avatar: CircleAvatar(
            backgroundColor: Colors.cyan,
            child: Text(company.name[0].toUpperCase(),style: TextStyle(color: Colors.white),),
          ),
          label: Text(company.name, style: TextStyle(color:
          Colors.white)),
          selected: _filters.contains(company.name),selectedColor: Colors.green,
          onSelected: (bool selected) {
            setState(() {
              if (selected) {
                _filters.add(company.name);
              } else {
                _filters.removeWhere((String name) {
                  return name == company.name;
                });
              }
            });
          },
        ),
      );
    }
  }

  Widget _buildChip(String label, Color color) {
    return Chip(
      labelPadding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.white70,
        child: Text(label[0].toUpperCase()),
      ),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: color,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(8.0),
    );
  }

/*
  chipList() {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: <Widget>[
        _buildChip('Gamer', Color(0xFFff6666)),
        _buildChip('Hacker', Color(0xFF007f5c)),
        _buildChip('Developer', Color(0xFF5f65d3)),
        _buildChip('Racer', Color(0xFF19ca21)),
        _buildChip('Traveller', Color(0xFF60230b)),
      ],
    );
  }
*/

/*
  Widget _buildInputChips() {
    return InputChip(
      padding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Color(0xff176AA6),
        child: Text('FD'),
      ),
      label: Text('Flutter Devs',style: TextStyle(color:
      Colors.black),
      ),
      selected: _isSelected,
      selectedColor: Colors.green,
      onSelected: (bool selected) {
        setState(() {
          _isSelected = selected;
        });
      },
      onDeleted: () {
      },
    );
  }*/

 /* Widget _buildActionChips() {
    return ActionChip(
      elevation: 8.0,
      padding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.mode_comment,color: Colors.white,size: 20,),
      ),
      label: Text('Message'),
      onPressed: () {
        _key.currentState.showSnackBar(SnackBar(
          content: Text('Message...'),
        ));
      },
      backgroundColor: Colors.grey[200],
      shape: StadiumBorder(
          side: BorderSide(
            width: 1,
            color: Colors.redAccent,
          )),
    );
  }*/

}

class CompanyWidget {
  const CompanyWidget(this.name);
  final String name;
}