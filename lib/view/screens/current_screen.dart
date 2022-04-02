import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal/coponents/my_primary_button.dart';

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
    Future.delayed(Duration(seconds: 2)).then((value) {
      showPaymentDialog();
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
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.03),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SvgPicture.asset("assets/home_icons/no_animal.svg"),
            
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04,bottom: MediaQuery.of(context).size.height *0.02),
                child: const Text(
                  "Hali hayvonlaringiz yo'q",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
                ),
              ),
              const Text(
                "O'zingiz istagan hayvonni sotib olishingiz mumkin",
                style: TextStyle(color: Color(0xff6E716F), fontSize: 16.0),
              ),
              
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.1),
                child: MyPrimaryButton(child: "+ Hayvon sotib olish", onPressed: (){}, color: Color(0xff058F1A), textColor: Color(0xffFFFFFF)),
              )
            ],
          ),
        ),
      ),
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

  showPaymentDialog() {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Column(
        children: [
          ListTile(
            leading: SvgPicture.asset("assets/home_icons/apelsin.svg"),
            title: Text("Apelsin",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          onTap: (){},
          ),
            ListTile(
            leading: SvgPicture.asset("assets/home_icons/payme.svg"),
            title: Text("Payme",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          onTap: (){},
          ),
        ],
      ),
    );
  }
}
