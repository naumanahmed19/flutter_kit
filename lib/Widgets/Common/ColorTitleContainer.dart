import 'package:flutter/material.dart';

class ColorTitleContainer extends StatelessWidget {
  const ColorTitleContainer({Key key, this.title, this.color})
      : super(key: key);
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color == null ? Color(0xFFe7cfff) : color,
            borderRadius: BorderRadius.circular(8)),
        height: 35,
        width: 80,
        child: Text(
          title == null ? 'Topics' : title,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ));
  }
}
