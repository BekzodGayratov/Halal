import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyBackButtton extends StatelessWidget {
  final VoidCallback onPressed;
  const MyBackButtton({
    Key? key,required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Row(
        children: const [
          Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          Text(
            "Ortga",
            style: TextStyle(fontSize: 17.0, color: Colors.blue),
          )
        ],
      ),
      onPressed: onPressed
    );
  }
}
