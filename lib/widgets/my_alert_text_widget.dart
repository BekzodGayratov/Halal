import 'package:flutter/material.dart';

class MyAlertText extends StatelessWidget {
  final String text;
  const MyAlertText({
    Key? key,required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03),
      leading: const Icon(Icons.error_outline),
      title: Text(
        text,
        style: const TextStyle(color: Colors.red),
      ),
    );
  }
}