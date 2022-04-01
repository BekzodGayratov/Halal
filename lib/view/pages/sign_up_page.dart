import 'package:flutter/material.dart';
import 'package:halal/coponents/my_back_button_comp.dart';
import 'package:halal/coponents/my_login_text_form_comp.dart';

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
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height *0.04,
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03),
            child: Column(
              children: [
                MyLoginTextForm(hintText: "To'liq ism-familyangiz"),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height *0.04),
                  child: MyLoginTextForm(hintText: "Tug'ilgan sanangiz"),
                ),
                MyLoginTextForm(hintText: "Telefon raqamingiz"),
              ],
            ),
          )),
          Expanded(child: Row()),
          Expanded(child: Column())
        ],
      ),
    );
  }
}
