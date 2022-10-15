import 'package:get/get.dart';
import 'package:loginappstorage/loginpages/login_controller.dart';

class HomeController extends GetxController {
  late String username;
  List temp = [];
  RxBool loading = true.obs;
  var storage;
  @override
  void onInit() {
    Get.put(LoginController());
    loading.value = true;
    storage = Get.find<LoginController>().storage;
    username = storage.read('email');
    temp = username.split('@');
    loading.value = false;
    super.onInit();
  }
}
