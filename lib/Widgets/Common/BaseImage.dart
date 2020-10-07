import 'package:flutter/material.dart';

class BaseImage extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final double radius;
  final int heroId;
  final bool overlay;
  BaseImage({
    this.imageUrl,
    this.height,
    this.width,
    this.radius,
    this.heroId,
    this.overlay,
  });

  _buildImage() => Image.asset(
        imageUrl,
        height: height,
        width: width,
        fit: BoxFit.cover,
      );

  @override
  Widget build(BuildContext context) {
    return _buildImage();
  }
}
