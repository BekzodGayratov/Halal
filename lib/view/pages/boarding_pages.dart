import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halal/coponents/boarding_comp.dart';
import 'package:halal/coponents/my_primary_button.dart';
import 'package:halal/cubit/boarding_cubit/boarding_cubit.dart';
import 'package:halal/cubit/boarding_cubit/boarding_state.dart';
import 'package:halal/functions/show_boarding_border.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BoardingPage extends StatefulWidget {
  const BoardingPage({Key? key}) : super(key: key);

  @override
  State<BoardingPage> createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage>
    with TickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => BoardingCubit(), child: myScaffold(context));
  }

  myScaffold(context) {
    return Scaffold(
        body: BlocBuilder<BoardingCubit, BoardingState>(
      builder: (ctx, state) => SafeArea(
        child: TabBarView(
          controller: _controller,
          children: List.generate(
            3,
            (index) => Column(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            boardingImgs[index],
                          ),
                        ),
                        borderRadius: boardingBorder(index)),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          boardingTitles[index],
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 26),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Row(
                        children: List.generate(
                            3,
                            (index) => CircleAvatar(
                                  radius: 5.0,
                                  backgroundColor:
                                      ctx.watch<BoardingCubit>().index == index
                                          ? const Color(0xff058F1A)
                                          : Colors.transparent,
                                )),
                      ),
                      MyPrimaryButton(
                          child: const Text("Keyingisi"), onPressed: () {})
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
