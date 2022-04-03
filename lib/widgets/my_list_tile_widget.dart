import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyListTile extends StatelessWidget {
  final String urlToImg;
  final String child;
  final double width;
  final Color color;
  final String? alert;
  const MyListTile(
      {Key? key,
      required this.urlToImg,
      required this.child,
      this.alert,
      required this.width,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 0),
      leading:
          CircleAvatar(radius: 30.0, backgroundImage: NetworkImage(urlToImg)),
      title: Text(
        child,
        style: const TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height *0.008),
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.01,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: Colors.grey)),
                ),
                Positioned(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.01,
                    width: width,
                    decoration: BoxDecoration(
                        color: color, borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
              ],
            ),
          ),
          Text(alert??"",style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
        ],
      ),
    );
  }
}
