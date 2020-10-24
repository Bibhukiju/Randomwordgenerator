import 'package:RWG/methods/methods.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final MyData myData = MyData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red[300]),
              ),
            ),
            Text(
              "Hello",
              style: TextStyle(color: Colors.grey[45], fontSize: 35),
            ),
          ],
        ),
      ),
    );
  }
}
