import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/login/login.png"),
                      fit: BoxFit.cover)),
            ),
            Positioned(
                child: Opacity(
              opacity: 0.8,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: const Color(0xff058F1A),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.85),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Skip",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    SvgPicture.asset(
                      "assets/splash.svg",
                      height: MediaQuery.of(context).size.height * 0.09,
                    ),
                    const SizedBox(
                      width: double.infinity,
                      child: Text("Chorva hayvonlarini onlayn boqish",overflow: TextOverflow.ellipsis,),)
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
