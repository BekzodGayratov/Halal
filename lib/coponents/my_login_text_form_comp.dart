import 'package:flutter/material.dart';

class MyLoginTextForm extends StatelessWidget {
  final String hintText;
  final VoidCallback? onTap;
  const MyLoginTextForm({Key? key, required this.hintText,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: hintText),
      validator: (v) {
        if (v!.isEmpty) {
          return "Bo'sh qoldirish mumkin emas";
        }
      },
      onTap: onTap,
    );
  }
}
