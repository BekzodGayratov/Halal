import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyBackButtton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? color;
  const MyBackButtton({Key? key, required this.onPressed,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              color:color?? Colors.blue,
            ),
            Text(
              "Ortga",
              style: TextStyle(fontSize: 17.0, color: color?? Colors.blue),
            )
          ],
        ),
        onPressed: onPressed);
  }
}
