import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal/coponents/my_primary_button.dart';
import 'package:halal/functions/show_buy_animal_dialog_func.dart';
import 'package:halal/widgets/my_colum_graph_widget.dart';
import 'package:halal/widgets/my_list_tile_widget.dart';

class BuyAnimalPage extends StatefulWidget {
  const BuyAnimalPage({Key? key}) : super(key: key);

  @override
  State<BuyAnimalPage> createState() => _BuyAnimalPageState();
}

class _BuyAnimalPageState extends State<BuyAnimalPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(microseconds: 300)).then((value) {
      showAnimalDialog(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xff058F1A),
          ),
          Positioned(
              child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                SvgPicture.asset("assets/splash.svg"),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05),
                  child: const Text(
                    "Balansingiz",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add_sharp,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: const Text(
                        "450 000",
                        style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Text(
                      "so'm",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Text(
                  "Hisobni to'ldirish uchun ID: 255 584 789",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                MyPrimaryButton(
                  child: "+ Hayvon sotib olish",
                  color: const Color(0xff058F1A),
                  textColor: const Color(0xffFFFFFF),
                  onPressed: () {
                    showAnimalDialog(context);
                  },
                ),
              ],
            ),
          )),
        ],
      )),
    );
  }
}
