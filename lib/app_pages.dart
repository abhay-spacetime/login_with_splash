import 'package:get/get.dart';
import 'package:loginappstorage/homepages/home_view.dart';
import 'package:loginappstorage/loginpages/login_controller.dart';
import 'package:loginappstorage/loginpages/login_view.dart';
import 'package:loginappstorage/splashpages/Splash_view.dart';
import 'package:loginappstorage/splashpages/splash_controller.dart';

import 'homepages/home_controller.dart';

List<GetPage> pages = [
  GetPage(
    name: LoginView.id,
    page: () => LoginView(),
    binding: BindingsBuilder(
      () => Get.lazyPut<LoginController>(
        () => LoginController(),
      ),
    ),
  ),
  GetPage(
    name: HomeView.id,
    page: () => HomeView(),
    binding: BindingsBuilder(
      () => Get.lazyPut<HomeController>(() => HomeController()),
    ),
  ),
  GetPage(
    name: SplashView.id,
    page: () => SplashView(),
    binding: BindingsBuilder(
      () => Get.put(() => SplashController()),
    ),
  )
];
