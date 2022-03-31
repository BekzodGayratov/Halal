import 'package:flutter/material.dart';
import 'package:halal/coponents/boarding_comp.dart';

class BoardingPage extends StatefulWidget {
  const BoardingPage({Key? key}) : super(key: key);

  @override
  State<BoardingPage> createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> with TickerProviderStateMixin{
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(initialIndex: 0,length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TabBarView(controller: _controller,
        children: List.generate(3, (index) => Container(
          color: index == 1?  Colors.red: Colors.yellow,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height *0.3,
                width: double.infinity,
                
              ),
            ],
          ),
        ),),
        ),
      ),
    );
  }
}
