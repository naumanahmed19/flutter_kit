import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'BaseIconContainer.dart';

class BaseHeader extends StatelessWidget {
  final String title;
  BaseHeader({this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BaseIconContainer(
          elevation: 10,
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        BaseIconContainer(
          elevation: 10,
          icon: Icon(SimpleLineIcons.camera),
        )
      ],
    );
  }
}
