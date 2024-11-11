import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sm_may/controller/counter_screen_2_controller.dart';

class CounterScreen2 extends StatelessWidget {
  const CounterScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterScreen2Controller counter2Controller =
        Get.put(CounterScreen2Controller());
    return Scaffold(
      appBar: AppBar(
        title: Text("counter 2"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter2Controller.onDecrement();
        },
      ),
      body: Center(
          child: Obx(
        () => Text(counter2Controller.count.toString()),
      )),
    );
  }
}
