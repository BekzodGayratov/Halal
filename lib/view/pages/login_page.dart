import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal/constants/const_colors.dart';
import 'package:halal/coponents/login_comp.dart';
import 'package:halal/coponents/my_primary_button.dart';
import 'package:halal/coponents/my_text.comp.dart';

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
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.03),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.8),
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.09,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: MyTextWidget(
                          text: loginTitle,
                          fontSize: 36.0,
                          fontWeight: FontWeight.w700,
                          color: MyColors.primaryTextColorLight,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: MyTextWidget(
                          text: loginSubtitle,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffFFFFFF),
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    
                   
                      Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.27,bottom: MediaQuery.of(context).size.height *0.02),
                        child: MyPrimaryButton(
                          child: "Ro'yhatdan o'tish",
                          onPressed: () {},
                          color: const Color(0xffEFEFEF),
                          textColor: Colors.black,
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(primary: Colors.white),
                        child: const Text("Akkauntga kirish"),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
