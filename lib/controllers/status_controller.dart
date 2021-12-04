import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StatusController extends GetxController {
  final box = GetStorage();
  var user = "".obs;

  @override
  void onInit() async {
    super.onInit();
    user.value = box.read('user') ?? "";
    ever(user, (value) {
      box.write('user', value);
    });
  }

  void changeUserName(String name) {
    user.value = name;
  }
}
