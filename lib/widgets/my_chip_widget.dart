
import 'package:flutter/material.dart';

class MyChip extends StatelessWidget {
  final Widget icon;
  const MyChip({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01,
        ),
        label: icon);
  }
}
