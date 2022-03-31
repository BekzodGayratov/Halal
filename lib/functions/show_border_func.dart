  import 'package:flutter/widgets.dart';

showBorder(index) {
    if (index == 0) {
      return const BorderRadius.vertical(top: Radius.circular(20.0));
    } else if (index == 2) {
      return const BorderRadius.vertical(bottom: Radius.circular(20.0));
    }
  }