import 'package:get/get.dart';
import 'package:getx_sm_may/view/counter_screen_2/counter_screen_2.dart';

class CounterScreenController extends GetxController {
  int count = 0;

  onIncrement() {
    count++;
    Get.to(CounterScreen2());
    update();
  }
}
