import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:loginappstorage/loginpages/login_controller.dart';
import 'package:loginappstorage/widgets/custom_button_icon.dart';
import 'package:loginappstorage/widgets/custom_text.dart';
import 'package:loginappstorage/widgets/custom_text_form.dart';

import '../constance.dart';

class LoginView extends GetView<LoginController> {
  static String id = '/loginpage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: controller.LoginFormKey,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 80.0,
              right: 20.0,
              left: 20.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomText(
                      text: "Welcome",
                      fontSize: 30.0,
                    ),
                    CustomText(
                      text: "Sign up",
                      color: primaryColor,
                      fontSize: 18,
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const CustomText(
                  text: "Sign into Continue",
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
                const SizedBox(height: 30),
                CustomTextFormField(
                  controller: controller.emailTextController,
                  // controller: controller.userNameController,
                  text: 'Email',
                  hint: 'abc@gmail.com',
                  onSave: (value) {
                    controller.save(value);
                  },
                  validator: (value)=>
                    controller.validateEmail(value)
                  
                ),
                const SizedBox(
                  height: 40,
                ),
                  

                CustomTextFormField(
                  
                    controller: controller.passwordTextController,
                    text: 'Password',
                    hint: '*******',
                    flag: true,
                    onSave: saved,
                    validator: (value)=>controller.validatePassword(value)),
                const SizedBox(
                  height: 20,
                ),
                CustomButtomIcon(
                    text: 'Login in',
                    onPress: () => controller.onLogin(),
                    icon: Icon(Icons.login, color: primaryColor))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

saved() {}
onPress() {}
validator() {}
