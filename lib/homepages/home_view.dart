import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:loginappstorage/constance.dart';
import 'package:loginappstorage/homepages/home_controller.dart';
import 'package:loginappstorage/widgets/custom_text.dart';

class HomeView extends GetView<HomeController> {
  static String id = '/homeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => controller.loading.value == true
          ? CircularProgressIndicator()
          : Center(
              child: CustomText(
                text: 'Welcome ${controller.temp[0] ?? ' no user'}',
                color: primaryColor,
                fontSize: 20,
              alignment: Alignment.center,
              ),
            ),
    ));
  }
}
