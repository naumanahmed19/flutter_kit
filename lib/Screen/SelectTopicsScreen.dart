import 'package:flutter/material.dart';
import 'package:flutter_kit/Widgets/Catalog/CustomTopicsCard.dart';
import 'package:flutter_kit/Widgets/Common/BaseColorButton.dart';
import 'package:flutter_kit/Widgets/Common/ColorTitleContainer.dart';

import 'OrderScreen.dart';

class SelectTopicsScreen extends StatelessWidget {
  const SelectTopicsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          ColorTitleContainer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '  Choose your\nfavourite topics ',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '  Its the easiest part and fastest way \n                to buid your board, ',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Expanded(child: CustomTopicsCard()),
          Container(
            width: width / 1.2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BaseColorButton(
                title: 'Continue',
                pressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderScreen()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
