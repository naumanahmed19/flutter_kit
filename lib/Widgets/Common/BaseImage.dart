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

  _buildImage() => ClipRRect(
        borderRadius: BorderRadius.circular(radius == null ? 0 : radius),
        child: Image.asset(
          imageUrl,
          height: height,
          width: width,
          fit: BoxFit.fill,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return _buildImage();
  }
}
