import 'package:flutter/material.dart';

class BaseDropDown extends StatelessWidget {
  final String title;
  final Function route;
  BaseDropDown({Key key, this.title, this.route});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(
        Icons.arrow_drop_down,
        color: Theme.of(context).primaryColor,
      ),
      // child: Text(title),
      onSelected: (String value) {
        if (value == 'details') {
          route();
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
        PopupMenuItem<String>(
          value: 'details',
          child: Row(
            children: [
              Text('$title', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ],
    );
  }
}
