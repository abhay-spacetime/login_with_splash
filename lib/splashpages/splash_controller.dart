import 'dart:async';

import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:loginappstorage/loginpages/login_view.dart';

class SplashController extends GetxController{
 
  @override
  void onInit() {
      Timer(Duration(seconds: 3),
          ()=>Get.toNamed(LoginView.id)
         );
    super.onInit();
  }
}