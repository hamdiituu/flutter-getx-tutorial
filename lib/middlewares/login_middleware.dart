import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controllers/login_controller.dart';

class LoginMiddleware extends GetMiddleware {
  final _loginController = Get.put(LoginController());

  @override
  RouteSettings? redirect(String? route) {
    return _loginController.isLogin.value || route=='/login' ? null :  RouteSettings(name: '/login');
  }

  @override
  GetPage? onPageCalled(GetPage? page) {
    print('--login middleware .. ${page?.name}');
    return super.onPageCalled(page);
  }
}
