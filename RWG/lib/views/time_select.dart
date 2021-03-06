import 'package:RWG/methods/methods.dart';
import 'package:RWG/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TimeSelectionPage extends StatelessWidget {
  final MyData myData = MyData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text(
              "Select Time ",
              style: TextStyle(color: Colors.grey[300], fontSize: 35),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Center(
              child: CupertinoPicker(
                  itemExtent: 45,
                  onSelectedItemChanged: (value) {
                    myData.getTime(value);
                    print(value);
                  },
                  children: [
                    Center(child: Text("10")),
                    Center(child: Text("20")),
                    Center(child: Text("30")),
                    Center(child: Text("40")),
                    Center(child: Text("50")),
                    Center(child: Text("60")),
                  ]),
            ),
          ),
          Align(
            alignment: Alignment(1, 0),
            child: RaisedButton(
                color: Colors.red[300],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text("Next"),
                onPressed: () {
                  Get.to(HomePage());
                }),
          )
        ],
      ),
    );
  }
}
