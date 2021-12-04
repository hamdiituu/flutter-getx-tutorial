import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controllers/status_controller.dart';
import 'package:getx_tutorial/widgets/counter_increment_button.dart';

class StatusView extends StatelessWidget {
  StatusView({Key? key}) : super(key: key);
  final StatusController _status = Get.put(StatusController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Status View'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              'User Name is ${_status.user}',
              style:const TextStyle(fontSize: 24),
            ),
          ),
         const CounterIncrementButton(),
          ElevatedButton(
              onPressed: () {
                _status.changeUserName('Merhaba Hamdi');
              },
              child: Text('Change User Name'))
        ],
      )),
    );
  }
}
