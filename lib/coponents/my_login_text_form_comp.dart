import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyLoginTextForm extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  const MyLoginTextForm(
      {Key? key, required this.controller, required this.hintText, this.onTap,this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType?? TextInputType.text,
      controller: controller,
      decoration: InputDecoration(hintText: hintText),
      validator: (v) {
        if (v!.isEmpty) {
          return "Bo'sh qoldirish mumkin emas";
        }
      },
      onTap: onTap,
      onChanged: (v) {
        print(v);
      },
    );
  }
}
