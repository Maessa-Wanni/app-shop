import 'package:flutter/material.dart';

import '../../constants.dart';

class MyActivities extends StatefulWidget {
  @override
  _MyActivitiesState createState() => _MyActivitiesState();
}

class _MyActivitiesState extends State<MyActivities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: GlobalColors.brownColor,
          iconTheme: IconThemeData(color: GlobalColors.whiteColor),
          title: Text('My Activities',style: FontStyles.pageTitle,),
        ),
        body: Container(
            child:Column(
              children: [
                ListTile(
                    leading: Icon(Icons.add_to_photos),
                    // title:,
                ),
                ListTile(
                    leading: Icon(Icons.login),
                    // title:
                ),
                ListTile(
                    leading: Icon(Icons.add_to_photos),
                    // title:
                ),
                ListTile(
                    leading: Icon(Icons.add_to_photos),
                    // title:
                ),
              ],
            )


        )
    );

  }
}