import 'package:flutter/material.dart';
import 'package:halal/coponents/my_back_button_comp.dart';
import 'package:halal/coponents/my_primary_button.dart';
import 'package:halal/widgets/my_alert_text_widget.dart';
import 'package:halal/widgets/my_chip_widget.dart';
import 'package:halal/widgets/my_colum_graph_widget.dart';
import 'package:halal/widgets/my_list_tile_widget.dart';
import 'package:halal/widgets/my_outline_button_widget.dart';

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
              leadingWidth: MediaQuery.of(context).size.width * 0.25,
              leading: MyBackButtton(
                  color: Colors.white,
                  onPressed: () {
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
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.03),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const MyAlertText(
                              text:
                                  "Otlar orasida oq mushak kasalligi tarqayapti."),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: MyOutlineButton(
                                child: "Dori sotib olish", onPressed: () {}),
                          ),
                          Row(
                            children: [
                              MyChip(
                                icon: Row(
                                  children: const [
                                    Icon(Icons.saved_search_outlined),
                                    Text("8 oylik")
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.03,
                              ),
                              MyChip(
                                icon: Row(
                                  children: const [
                                    Icon(Icons.money_outlined),
                                    Text("3 250 000 so'm")
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: MyChip(
                                  icon: Row(
                                children: const [
                                  Icon(Icons.location_searching),
                                  Text("New Uzbekistan Farm")
                                ],
                              ))),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: MyChip(
                              icon: Row(
                                children: const [
                                  Icon(Icons.calendar_month_outlined),
                                  Text("Xarid sanasi: 28.11.2021")
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: const Text(
                              "Yetilish ko'rsatgichi",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                          const Center(child: Text("52%")),
                          Center(
                            child: MyColumGraph(
                                width:
                                    MediaQuery.of(context).size.width * 0.02),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.01,
                                bottom:
                                    MediaQuery.of(context).size.height * 0.03),
                            child: const Center(
                                child: Text(
                                    "Taxminiy yetilish sanasi: 22-noyabr,2022-yil")),
                          ),
                          const Text(
                            "Yemishlari (2)",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          MyListTile(
                              urlToImg: "https://source.unsplash.com/random",
                              child: "Beda (58%)",
                              alert: "2-martdan tugaydi",
                              width: MediaQuery.of(context).size.width * 0.5,
                              color: const Color(0xff058F1A)),
                          MyListTile(
                              urlToImg: "https://source.unsplash.com/random",
                              child: "Bug'doy(8%)",
                              alert: "Ertaga tugaydi",
                              width: MediaQuery.of(context).size.width * 0.1,
                              color: Colors.red),

                          ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 0),
                            leading: const Text(
                              "Yemishlar tarixi",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            trailing: SizedBox(
                                width: 100,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text("12 ta xarid"),
                                    Icon(Icons.chevron_right)
                                  ],
                                )),
                            onTap: () {},
                          ),
                          //const Divider(),
                          ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 0),
                            leading: const Text(
                              "Dorilar tarixi",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            trailing: SizedBox(
                                width: 100,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text("3 ta xarid"),
                                    Icon(Icons.chevron_right)
                                  ],
                                )),
                            onTap: () {},
                          ),
                          MyPrimaryButton(
                              child: "Uyimga yetkazib berish",
                              onPressed: () {},
                              color: const Color(0xffEFEFEF),
                              textColor: Colors.black),
                          const Text(
                            "Hayvoningizni tirik yoki so'yilgan holda uyingizga eltib beramiz",
                            style: TextStyle(
                                color: Color(
                                  0xff565A57,
                                ),
                                fontWeight: FontWeight.w400),
                          ),
                          MyPrimaryButton(
                              child: "Sotuvga qo'yish",
                              onPressed: () {},
                              color: const Color(0xffEFEFEF),
                              textColor: Colors.black),
                          const Text(
                            "Hayvoningizni onlayn bozorda boshqalarga sotishingiz mumkin",
                            style: TextStyle(
                                color: Color(
                                  0xff565A57,
                                ),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
