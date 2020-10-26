import 'dart:math';

import 'package:flutter/material.dart';

mixin BaseMixins {
  //Color
  dynamic responsive(BuildContext context, {isPhone, isSmallPhone, isTablet}) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    if (width > 500) {
      return isTablet;
    } else if (width < 370) {
      return isSmallPhone;
    } else
      return isPhone;
  }

  activeColor(BuildContext context, check) {
    return check
        ? Theme.of(context).primaryColor
        : Theme.of(context).iconTheme.color;
  }

  //List Shuffle
  List shuffle(List list) {
    var random = Random();
    int length = list.length;
    while (length > 1) {
      int pos = random.nextInt(length);
      length -= 1;
      var tmp = list[length];
      list[length] = list[pos];
      list[pos] = tmp;
    }
    return list;
  }
}
