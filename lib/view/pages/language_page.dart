import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal/constants/const_colors.dart';
import 'package:halal/coponents/my_primary_button.dart';
import 'package:halal/cubit/lang_cubit/lang_cubit.dart';
import 'package:halal/cubit/lang_cubit/lang_cubit_states.dart';

import 'package:halal/widgets/change_lang_widget.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguageCubit(),
      child: myScaffold(context),
    );
  }

  Scaffold myScaffold(BuildContext context) {
    return Scaffold(body: BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        return SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.08,
                        bottom: MediaQuery.of(context).size.height * 0.15),
                    child: SvgPicture.asset("assets/logo.svg"),
                  ),
                  Text(
                    "Tilni tanlang",
                    style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.w600,
                        color: MyColors.primaryTextColorLight),
                  ),
                  Text(
                    "Dasturni qaysi tilda ishlatishni hohlaysiz?",
                    style: TextStyle(
                        fontSize: 16.0, color: MyColors.secondaryTextColor),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F1F7),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                        children: List.generate(
                            3,
                            (index) => ChangeLangWidget(
                                index: index, context: context))),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  MyPrimaryButton(
                      child:"Ro'yhatdan o'tish",
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/boarding');
                      
                      },color: Colors.red,textColor: Colors.red,)
                ],
              ),
            ),
          ),
        );
      },
    ));
  }
}
