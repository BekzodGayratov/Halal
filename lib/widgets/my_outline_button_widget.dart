import 'package:flutter/material.dart';

class MyOutlineButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String child;
  const MyOutlineButton(
      {Key? key, required this.child, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.06,
      width: double.infinity,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              primary: Colors.black,
              side: const BorderSide(color: Colors.black),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0))),
          child: Text(
            child,
            style: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),
          ),
          onPressed: onPressed),
    );
  }
}
