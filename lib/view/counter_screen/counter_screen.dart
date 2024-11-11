import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sm_may/controller/counter_screen_2_controller.dart';
import 'package:getx_sm_may/controller/counter_screen_controller.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterScreenController counterController =
        Get.put(CounterScreenController());
    final CounterScreen2Controller counter2Controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("counter 1"),
      ),
      body: Center(
        child: GetBuilder<CounterScreenController>(
          builder: (controller) => Text(controller.count.toString()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.onIncrement();
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
