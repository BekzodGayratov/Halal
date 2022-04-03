import 'package:flutter/material.dart';
import 'package:halal/view/pages/info_page.dart';

class SellAnimalPage extends StatelessWidget {
  const SellAnimalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const MySliverAppBar(
                title: "Sotuvga qo'yish", imgUrl: "assets/animals/horse.png"),
            SliverList(delegate: SliverChildListDelegate([]))
          ],
        ),
      ),
    );
  }
}
