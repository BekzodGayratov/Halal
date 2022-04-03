import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal/coponents/my_back_button_comp.dart';

class LivePage extends StatefulWidget {
  const LivePage({Key? key}) : super(key: key);

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(microseconds: 300)).then((value) {
      showProVersionDialog(context);
    });
  }

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
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/animals/live.png",
                ),
                fit: BoxFit.cover)),
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
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const Text(
            "Efirdan chiqish",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }

  showProVersionDialog(context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xffF5F5F5)),
              child: Column(
                children: [
                  SvgPicture.asset("assets/splash.svg"),
                  const Text(
                      "Jonli onlayn kuzatish uchun Pro versiyaga o'tishingiz kerak"),
                  const Divider(),
                  TextButton(
                      onPressed: () {},
                      child: const Text("Pro versiyaga o'tish"))
                ],
              ),
            ),
          );
        });
  }
}
