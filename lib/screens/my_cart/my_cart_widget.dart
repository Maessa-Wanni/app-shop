
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants.dart';

class MyCartWidget extends StatefulWidget {
  final String id;
  final double price;
  final String title;
  final String photo;
  bool isChecked = false;

  MyCartWidget({this.id, this.price, this.title, this.photo});

  @override
  _MyCartWidgetState createState() => _MyCartWidgetState();
}

class _MyCartWidgetState extends State<MyCartWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: GlobalColors.whiteColor,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: GlobalColors.brownColor,
            radius: 40,
            backgroundImage: NetworkImage(widget.photo),
          ),
          title: Text('${widget.price}'),
          subtitle: Container(
            child: Text(
              widget.title,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12,color: GlobalColors.brownColor,fontFamily: 'kanit',),
            ),
            height: 25,
            width: 50,
          ),
          isThreeLine: true,
          trailing: IconButton(
            onPressed: () {
              setState(() {
                widget.isChecked = !widget.isChecked;
              });
            },
            icon: widget.isChecked
                ? Icon(
                    Icons.check_box,
                    color: GlobalColors.brownColor,
                  )
                : Icon(
                    Icons.check_box_outline_blank_sharp,
                    color: GlobalColors.brownColor,
                  ),
          ),
        ),
      ),
    );
  }
}
