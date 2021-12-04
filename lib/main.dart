import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/middlewares/login_middleware.dart';
import 'package:getx_tutorial/middlewares/login_middleware.dart';
import 'package:getx_tutorial/middlewares/login_middleware.dart';
import 'package:getx_tutorial/middlewares/login_middleware.dart';
import 'package:getx_tutorial/views/counter_view.dart';
import 'package:getx_tutorial/views/home_view.dart';
import 'package:getx_tutorial/views/login_view.dart';
import 'package:getx_tutorial/views/status_view.dart';

void main() => runApp(const Application());

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: '/login',
      title: 'Get Tutorial',
      getPages: [
        GetPage(middlewares: [LoginMiddleware()],name: '/login',page: ()=>LoginView()),
        GetPage(middlewares: [LoginMiddleware()],name: '/home',page: ()=>HomeView()),
        GetPage(middlewares: [LoginMiddleware()],name: '/counter', page: () => CounterView()),
        GetPage(middlewares: [LoginMiddleware()],name: '/status', page: () => StatusView())
      ],
    );
  }
}
