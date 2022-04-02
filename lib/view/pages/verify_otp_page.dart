import 'package:flutter/material.dart';

class VerifyPage extends StatelessWidget {
  final String phoneNumber;
  const VerifyPage({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          //leadingWidth: MediaQuery.of(context).size.width * 0.25,
          leading: IconButton(
              icon: const Icon(
                Icons.cancel_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/signUp');
              })),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                "Sms dagi kodni kiriting",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Text(
                "Kod ushbu raqamga yuborildi:",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              Text(
                phoneNumber,
                style: const TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
