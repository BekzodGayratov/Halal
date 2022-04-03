import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal/functions/show_payment_dialog.dart';
import 'package:halal/view/screens/home_screen.dart';

class CurrentScreen extends StatefulWidget {
  const CurrentScreen({Key? key}) : super(key: key);

  @override
  State<CurrentScreen> createState() => _CurrentScreenState();
}

class _CurrentScreenState extends State<CurrentScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    Future.delayed(const Duration(microseconds: 300)).then((value) {
      showPaymentDialog(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF4F4F4),
        elevation: 0,
        title: const Text(
          "Mening hayvonlarim",
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: HomeScreen(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: _tabController,
          tabs: [
            Tab(
                icon: SvgPicture.asset(
              "assets/home_icons/home.svg",
              color: Colors.grey,
            )),
            Tab(
                icon: SvgPicture.asset(
              "assets/home_icons/search.svg",
              color: Colors.grey,
            )),
            Tab(
                icon: SvgPicture.asset(
              "assets/home_icons/notification.svg",
              color: Colors.grey,
            )),
            Tab(
              icon: SvgPicture.asset(
                "assets/home_icons/user.svg",
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

 
}
