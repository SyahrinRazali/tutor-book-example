import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:listview/components/TutorList.dart';
import 'package:listview/components/search_box.dart';
//import 'package:listview/constants.dart';
import 'package:listview/widgets/category_selector.dart';
import 'package:listview/widgets/drop_down.dart';
import 'package:listview/widgets/drop_down2.dart';
import 'package:listview/widgets/drop_down3.dart';
import 'package:listview/widgets/drop_special.dart';

//import '../constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text(
          'Pickiddo',
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage('assets/images/elon_1.jpg'),
          )
        ],
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  height: size.height * 0.9,
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0))),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 30.0)),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  height: 80.0,
                                  width: 125.0,
                                  color: Colors.white,
                                  child: DropDown(),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  height: 80.0,
                                  width: 125.0,
                                  color: Colors.white,
                                  child: DropDown2(),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  height: 80.0,
                                  width: 125.0,
                                  color: Colors.white,
                                  child: DropDown3(),
                                ),
                              ),
                            ]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Container(
                                  child: DropDownSp(),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              SearchBox(),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: TutorListTab(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
