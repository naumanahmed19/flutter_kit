import 'package:flutter/material.dart';
import 'package:flutter_kit/Widgets/Common/BaseImage.dart';
import 'package:flutter_kit/Widgets/Common/BaseOverlay.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: BaseOverlay(
        child: BaseImage(
          height: height,
          width: width,
          imageUrl: 'assets/bg3.jpg',
        ),
      ),
    );
  }
}
