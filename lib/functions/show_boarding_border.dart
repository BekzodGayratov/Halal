 import 'package:flutter/widgets.dart';

boardingBorder(index) {
    if (index == 0) {
      return const BorderRadius.only(bottomLeft: Radius.circular(40.0));
    }else if(index == 2){
      return  const BorderRadius.only(bottomRight: Radius.circular(40.0));
    }else{
      return  const BorderRadius.only(bottomLeft: Radius.circular(0.0));
    }
  }