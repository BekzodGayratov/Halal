import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal/coponents/my_back_button_comp.dart';

class LivePage extends StatelessWidget {
  const LivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0001,
        leadingWidth: MediaQuery.of(context).size.width * 0.25,
        leading: MyBackButtton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
        title: const Text("Jonli kuzatuv"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/animals/live.png",),fit: BoxFit.cover)
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.red,
            child: const Icon(
              Icons.logout_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          const Text("Efirdan chiqish",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),)
        ],
      ),
    );
  }
}
