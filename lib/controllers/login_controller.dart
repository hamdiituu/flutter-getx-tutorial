import 'package:get/get.dart';

class LoginController extends GetxController{
  RxBool isLogin = false.obs;

  void userLogin()=>isLogin.value =true;

  void userLogout()=>isLogin.value = false;

}