import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controllers/counter_controller.dart';

class CounterIncrementButton extends StatelessWidget {
  const CounterIncrementButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController _counter = Get.find();
    return ElevatedButton(onPressed: (){_counter.increment();}, child: Text('count++'));
  }
}
