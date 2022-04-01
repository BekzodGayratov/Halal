import 'package:flutter/material.dart';
import 'package:halal/coponents/my_back_button_comp.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width * 0.25,
        leading: MyBackButtton(onPressed: () {
          Navigator.pushReplacementNamed(context, '/login');
        }),
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Ro'yhatdan o'tish",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
