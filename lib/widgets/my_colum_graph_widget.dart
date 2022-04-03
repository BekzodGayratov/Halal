import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyColumGraph extends StatelessWidget {
  final double width;
  const MyColumGraph({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color: Colors.grey)),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.05,
          bottom: MediaQuery.of(context).size.height * 0.0022,
          left: MediaQuery.of(context).size.width * 0.005,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.14,
            decoration: BoxDecoration(
                color: const Color(0xff058F1A),
                borderRadius: BorderRadius.circular(12.0)),
          ),
        ),
      ],
    );
  }
}

