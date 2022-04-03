import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal/coponents/my_primary_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.03),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            SvgPicture.asset("assets/home_icons/no_animal.svg"),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.04,
                  bottom: MediaQuery.of(context).size.height * 0.02),
              child: const Text(
                "Hali hayvonlaringiz yo'q",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
            ),
            const Text(
              "O'zingiz istagan hayvonni sotib olishingiz mumkin",
              style: TextStyle(color: Color(0xff6E716F), fontSize: 16.0),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1),
              child: MyPrimaryButton(
                child: "+ Hayvon sotib olish",
                color: const Color(0xff058F1A),
                textColor: const Color(0xffFFFFFF),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/buyAnimal');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
