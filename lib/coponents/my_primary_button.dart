import 'package:flutter/material.dart';
import 'package:halal/constants/const_colors.dart';

class MyPrimaryButton extends StatelessWidget {
  final String child;
  final dynamic onPressed;
  final Color color;
  final Color textColor;
  const MyPrimaryButton(
      {Key? key,
      required this.child,
      required this.onPressed,
      required this.color,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.075,
      width: double.infinity,
      child: ElevatedButton(
      
        child: Text(child,style: TextStyle(color: textColor,fontWeight: FontWeight.w600),),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(primary: color),
      ),
    );
  }
}
