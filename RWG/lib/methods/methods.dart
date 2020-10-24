import 'package:get/get.dart';

class MyData extends GetxController {
  var selectedTime = 0.obs;

  void getTime(int time) {
    selectedTime.value = time;
    print(selectedTime);
  }
}
