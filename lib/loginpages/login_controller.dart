import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:loginappstorage/homepages/home_view.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> LoginFormKey = GlobalKey<FormState>();
  late TextEditingController emailTextController;
  late TextEditingController passwordTextController;
  var email = '';
  var password = '';
  var storage;
  @override
  void onInit() {
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    storage = GetStorage();
    super.onInit();
  }

  onLogin() {
    if (GetUtils.isEmail(emailTextController.text) && passwordTextController.text.length == 6) {
      storage.write('email', emailTextController.text);
      Get.toNamed(HomeView.id);
    } else {
      var title = '';
      var message = '';
      if (!GetUtils.isEmail(emailTextController.text)) {
        title = 'Incorrect Email';
        message = 'Provide Email in valid format';
      } else {
        title = 'Incorrect Password';
        message = 'Provide password must be 6 digit';
      }
      Get.snackbar(title, message,
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailTextController.dispose();
    passwordTextController.dispose();
    super.onClose();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length == 6) {
      return "Provide must be of 6 characters";
    }
    return null;
  }

  void checkLogin() {
    final isValid = LoginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    LoginFormKey.currentState!.save();
  }

  void save(value) {
    email = value!;
  }
}
