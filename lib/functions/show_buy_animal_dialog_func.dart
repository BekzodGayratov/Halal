import 'package:flutter/material.dart';
import 'package:halal/widgets/my_colum_graph_widget.dart';
import 'package:halal/widgets/my_list_tile_widget.dart';

showAnimalDialog(context) {
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
      
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.03),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
              color: Color(0xffF2F1F7),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.03,
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 1,
                    child: Text(
                      "Mening hayvonlarim (2)",
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Expanded(
                      flex: 9,
                      child: ListView.builder(itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.01),
                          height: MediaQuery.of(context).size.height * 1,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * 0.03,
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.03),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "$index. Denov oti (N 254)",
                                  style: const TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          MediaQuery.of(context).size.height *
                                              0.02),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/animals/ship.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.03),
                                  leading: const Icon(Icons.error_outline),
                                  title: const Text(
                                    "Qo'ylar orasida oq mushuk kasalligi tarqayapti.",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height *
                                      0.055,
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          primary: Colors.black,
                                          side: const BorderSide(
                                              color: Colors.black),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0))),
                                      child: const Text("Dori sotib olish"),
                                      onPressed: () {}),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          MediaQuery.of(context).size.height *
                                              0.05),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Yetilish ko'rsatkichi",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18.0),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01,
                                          ),
                                          const Text(
                                              "Taxminiy yetilish sanasi:"),
                                          const Text("22-aprel, 2022-yil"),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "52%",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18.0),
                                          ),
                                          MyColumGraph(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.6,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  "Yemishlari (2)",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                MyListTile(
                                  urlToImg:
                                      "https://source.unsplash.com/random",
                                  child: "Beda (58%) ",
                                  width:
                                      MediaQuery.of(context).size.width * 0.48,
                                  color: Color(0xff058F1A),
                                ),
                                MyListTile(
                                  urlToImg:
                                      "https://source.unsplash.com/random",
                                  child: "Bug'doy (8%)",
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  color: Colors.red,
                                )
                              ],
                            ),
                          ),
                        );
                      }))
                ],
              ),
            ),
          );
        });
  }