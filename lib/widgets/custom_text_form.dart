import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginappstorage/widgets/custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hint;
  final Function onSave;
  final Function validator;
  final TextEditingController controller;
  final bool flag;

  const CustomTextFormField(
      {super.key,
      required this.text,
      required this.hint,
      required this.onSave,
      required this.validator,
      this.flag = false,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        CustomText(
          text: text,
          color: Colors.grey.shade900,
          fontSize: 14,
        ),
        flag
            ? TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  // for below version 2 use this
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
// for version 2 and greater youcan also use this
                  FilteringTextInputFormatter.digitsOnly
                ],
                controller: controller,
                obscureText: flag,
                validator: (value) {
                  return validator(value);
                },
                onSaved: (value) {
                  return onSave(value);
                },
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  fillColor: Colors.white,
                ),
              )
            : TextFormField(
                controller: controller,
                obscureText: flag,
                validator: (value) {
                  return validator!(value);
                },
                onSaved: (value) {
                  return onSave!(value);
                },
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  fillColor: Colors.white,
                ),
              )
      ]),
    );
  }
}
