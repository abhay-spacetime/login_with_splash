import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:loginappstorage/splashpages/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  static String id = '/splashview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<SplashController>(
            init: SplashController(),
            builder: (controller) {
              return Center(
                child: Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/images/splash_screen.png')),
              );
            }));
  }
}
