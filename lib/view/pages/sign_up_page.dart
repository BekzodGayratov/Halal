import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal/coponents/my_back_button_comp.dart';
import 'package:halal/coponents/my_login_text_form_comp.dart';
import 'package:halal/coponents/my_primary_button.dart';
import 'package:halal/cubit/login_cubit/login_cubit.dart';
import 'package:halal/cubit/login_cubit/login_state.dart';
import 'package:halal/functions/show_dialog_func.dart';
import 'package:halal/widgets/social_media_divider.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  final _controllerName = TextEditingController();
  final _controllerBirthday = TextEditingController();
  final _controllerPhone = TextEditingController();
  final DateTime selectedDate = DateTime.now();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
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
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.03),
                    child: Column(
                      children: [
                        MyLoginTextForm(
                            controller: _controllerName,
                            hintText: "To'liq ism-familyangiz"),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.04),
                          child: MyLoginTextForm(
                            controller: _controllerBirthday,
                            hintText: "Tug'ilgan sanangiz",
                            onTap: () {
                              showDatePickerFunc(
                                context,
                                _controllerBirthday,
                              );
                            },
                            keyboardType: TextInputType.none,
                          ),
                        ),
                        MyLoginTextForm(
                          controller: _controllerPhone,
                          hintText: "Telefon raqamingiz",
                          keyboardType: TextInputType.number,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  const SocialDivider(),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.03,
                      right: MediaQuery.of(context).size.width * 0.03,
                      top: MediaQuery.of(context).size.height * 0.04,
                      bottom: MediaQuery.of(context).size.height * 0.02,
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.075,
                            decoration: BoxDecoration(
                              color: const Color(0xffF2F1F7),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/login/google.svg"),
                                const Text(
                                  "Google",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          highlightColor: Colors.transparent,
                          onTap: () {},
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.075,
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: BoxDecoration(
                                  color: const Color(0xffF2F1F7),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("assets/login/apple.svg"),
                                    const Text(
                                      "Apple",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              highlightColor: Colors.transparent,
                              onTap: () {},
                            ),
                            InkWell(
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.075,
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: BoxDecoration(
                                  color: const Color(0xffF2F1F7),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        "assets/login/facebook.svg"),
                                    const Text(
                                      "Facebook",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              highlightColor: Colors.transparent,
                              onTap: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        MyPrimaryButton(
                            child: "Keyingisi",
                            color: const Color(0xffCFD0CF),
                            textColor: const Color(0xff878987),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/verify');
                            })
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
