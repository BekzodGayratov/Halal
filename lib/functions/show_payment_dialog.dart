 import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

showPaymentDialog(context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Column(
        children: [
          ListTile(
            leading: SvgPicture.asset("assets/home_icons/apelsin.svg"),
            title: const Text(
              "Apelsin",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: SvgPicture.asset("assets/home_icons/payme.svg"),
            title: const Text(
              "Payme",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }