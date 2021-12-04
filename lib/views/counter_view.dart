import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controllers/counter_controller.dart';
import 'package:getx_tutorial/widgets/counter_increment_button.dart';
import 'package:getx_tutorial/widgets/status_user_name_widget.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    final CounterController _counter = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StatusUserNameWidget(),
            Obx(() => Text(
                  'Counter ${_counter.count}',
                  style: const TextStyle(fontSize: 30),
                )),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/status');
                },
                child: Text('show status')),
            CounterIncrementButton()
          ],
        ),
      ),
    );
  }
}
