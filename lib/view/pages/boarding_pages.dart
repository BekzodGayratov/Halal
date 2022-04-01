import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halal/coponents/boarding_comp.dart';
import 'package:halal/coponents/my_primary_button.dart';
import 'package:halal/cubit/boarding_cubit/boarding_cubit.dart';
import 'package:halal/cubit/boarding_cubit/boarding_state.dart';
import 'package:halal/functions/show_boarding_border.dart';

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
      builder: (context, state) => SafeArea(
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
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *0.02),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height *0.04,
                        ),
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
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height *0.08),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: List.generate(3, (index) {
                              context
                                  .read<BoardingCubit>()
                                  .changeCurrentItemIndex(index);
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *0.01),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.5,
                                    color: const Color(0xff058F1A),
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: CircleAvatar(
                                  radius: 4.0,
                                  backgroundColor:
                                      context.watch<BoardingCubit>().index ==
                                              context
                                                  .watch<BoardingCubit>()
                                                  .currentItemIndex
                                          ? const Color(0xff058F1A)
                                          : Colors.transparent,
                                ),
                              );
                            }),
                          ),
                        ),
                        MyPrimaryButton(
                            child: const Text("Keyingisi"),
                            onPressed: () {
                              if (_controller!.previousIndex !=1) {
                                _controller!.index += 1;
                                context
                                    .read<BoardingCubit>()
                                    .changeBoarding(_controller!.index);
                              } else {
                                print("Hello");
                              }
                            })
                      ],
                    ),
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
