import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showDatePickerFunc(context, TextEditingController controllerBirthday) {
  return showCupertinoModalPopup(
    barrierColor: Colors.transparent,
    context: context,
    builder: (context) => Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height *0.456,
      width: double.infinity,
      child: CupertinoDatePicker(
        backgroundColor: const Color(0xffEFEFEF),
        mode: CupertinoDatePickerMode.date,
        onDateTimeChanged: (v) {
          controllerBirthday.text = v.toString().substring(0, 10);
        },
        initialDateTime: DateTime.now(),
      ),
    ),
  );
}
