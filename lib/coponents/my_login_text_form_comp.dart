import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halal/cubit/login_cubit/login_cubit.dart';
import 'package:halal/cubit/login_cubit/login_state.dart';

class MyLoginTextForm extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  const MyLoginTextForm(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.onTap,
      this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
        return TextFormField(
          keyboardType: keyboardType ?? TextInputType.text,
          controller: controller,
          decoration: InputDecoration(hintText: hintText),
          validator: (v) {
            if (v!.isEmpty) {
              return "Bo'sh qoldirish mumkin emas";
            }
          },
          onTap: onTap,
          onChanged: (v) {
            if (v.isEmpty) {
              print(v);
              context.read<LoginCubit>().changeState();
            }
          },
        );
      }),
    );
  }
}
