import 'package:flutter/material.dart';
import 'package:halal/constants/const_colors.dart';

class MyPrimaryButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  const MyPrimaryButton(
      {Key? key, required this.child, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.075,
      width: double.infinity,
      child: ElevatedButton(
        child: child,
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: MyColors.myPrimaryButtonColor
        ),
      ),
    );
  }
}
