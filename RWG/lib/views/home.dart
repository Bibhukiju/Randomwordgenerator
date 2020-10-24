import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final time;
  HomePage({this.time});
  timeCounter() {
    Duration duration = Duration(seconds: time);
    var remainingtime;
  }

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
              time == null ? "10" : time.toString(),
              style: TextStyle(color: Colors.grey[45], fontSize: 35),
            ),
          ],
        ),
      ),
    );
  }
}
