import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'BaseIconContainer.dart';

class BaseHeader extends StatelessWidget {
  Function pressed;
  final Icon icon;
  final String title;
  BaseHeader({this.title, this.pressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BaseIconContainer(
          pressed: () => Navigator.pop(context),
          elevation: 10,
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        BaseIconContainer(
          pressed: pressed,
          elevation: 10,
          icon: icon,
        )
      ],
    );
  }
}
