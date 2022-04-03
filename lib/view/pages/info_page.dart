import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal/coponents/my_back_button_comp.dart';
import 'package:halal/widgets/my_alert_text_widget.dart';

class InfoPage extends StatelessWidget {
  final String title;
  const InfoPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leadingWidth: MediaQuery.of(context).size.width *0.25,
              leading: MyBackButtton(color: Colors.white,onPressed: () {
                Navigator.pop(context);
              }),
              expandedHeight: MediaQuery.of(context).size.height * 0.4,
              title: Text(title),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: const Icon(Icons.video_call_outlined),
                  onPressed: () {},
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/animals/horse.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate([
              MyAlertText(text: "Otlar orasida oq mushak kasalligi tarqayapti.")
             ]))
          ],
        ),
      ),
    );
  }
}
