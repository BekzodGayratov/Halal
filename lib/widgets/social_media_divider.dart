import 'package:flutter/material.dart';

class SocialDivider extends StatelessWidget {
  const SocialDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.275,
          child: const Divider(color: Colors.grey,thickness: 1.0,),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *0.03),
          child: const Text("Ijtimoiy tarmoqlar orqali",style: TextStyle(color: Colors.grey),),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.28,
          child: const Divider(color: Colors.grey,thickness: 1.0,),
        ),
      ],
    );
  }
}
