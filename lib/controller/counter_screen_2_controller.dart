import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sm_may/view/counter_screen/counter_screen.dart';

class CounterScreen2Controller extends GetxController {
  RxInt count = 0.obs;

  @override
  onInit() {
    count.value = 1000;
    super.onInit();
  }

  onDecrement() {
    count = count - 1;
    // Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
    Get.to(CounterScreen());
  }
}
