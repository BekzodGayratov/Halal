import 'package:flutter/material.dart';
import 'package:halal/coponents/lang_comp.dart';
import 'package:halal/cubit/lang_cubit/lang_cubit.dart';
import 'package:halal/functions/show_border_func.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeLangWidget extends StatelessWidget {
  final int index;
  final BuildContext context;
  const ChangeLangWidget({Key? key, required this.index, required this.context})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
              color: context.watch<LanguageCubit>().index == index
                  ? const Color(0xffDFF8E9)
                  : Colors.transparent,
              borderRadius: showBorder(index)),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.02,
                horizontal: MediaQuery.of(context).size.width * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage(urls[index]),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Text(
                      langs[index],
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                context.watch<LanguageCubit>().index == index
                    ? const Icon(Icons.check)
                    : const Icon(
                        Icons.abc,
                        color: Colors.transparent,
                      )
              ],
            ),
          )),
      onTap: () {
        context.read<LanguageCubit>().changeIndex(index);
      },
    );
  }
}
