import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controllers/status_controller.dart';

class StatusUserNameWidget extends StatelessWidget {
   StatusUserNameWidget({Key? key}) : super(key: key);
  var _statusController = Get.put(StatusController());
  @override
  Widget build(BuildContext context) {
    return Obx(()=>Text('user name is  : ${_statusController.user}'));
  }
}
