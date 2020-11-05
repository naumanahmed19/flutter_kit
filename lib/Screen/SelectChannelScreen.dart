import 'package:flutter/material.dart';
import 'package:flutter_kit/Widgets/Common/BaseColorButton.dart';
import 'package:flutter_kit/Widgets/Common/ColorTitleContainer.dart';
import 'package:flutter_kit/Widgets/Common/CustomChannelWidget.dart';

import 'OrderScreen.dart';

class SelectChannelScreen extends StatelessWidget {
  const SelectChannelScreen({Key key}) : super(key: key);

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
          ColorTitleContainer(
            color: Theme.of(context).primaryColor.withOpacity(0.5),
            title: 'Channels',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '    Choose your\nfavourite Channel ',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '  Now you can choose your favourite  \n     channels and pay only for them, ',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Expanded(child: CustomChannelCard()),
            ],
          )),
          Container(
            width: width / 1.2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BaseColorButton(
                title: 'Go to check out',
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
