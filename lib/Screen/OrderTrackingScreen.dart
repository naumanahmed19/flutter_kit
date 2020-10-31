import 'package:flutter/material.dart';
import 'package:flutter_kit/Widgets/Common/BaseColorButton.dart';
import 'package:flutter_kit/Widgets/Common/BaseContainer.dart';
import 'package:flutter_kit/Widgets/Common/BaseHeader.dart';

import 'OrderScreen.dart';

class OrderTrackingScreen extends StatefulWidget {
  @override
  _OrderTrackingScreenState createState() => _OrderTrackingScreenState();
}

class _OrderTrackingScreenState extends State<OrderTrackingScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BaseHeader(
            title: 'Track Order',
            icon: Icon(Icons.more_horiz),
            pressed: () {},
          ),
          Expanded(
            child: BaseContainer(
              height: height,
              width: width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    Text(
                      'Your order code: #890012',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '3 items - \$265.76',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 28.0, left: 20),
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 13, top: 50),
                              width: 4,
                              height: 300,
                              color: Colors.green,
                            ),
                            Column(
                              children: [
                                statusWidget('Estimated for 17 November',
                                    "Deliverd", false),
                                statusWidget('Estimated for 17 November',
                                    "Out of delivery", false),
                                statusWidget('Estimated for 17 November',
                                    "Order shipped", true),
                                statusWidget('Estimated for 17 November',
                                    "Confirmed", true),
                                statusWidget('Estimated for 17 November',
                                    "Order placed", true),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: width / 1.2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: BaseColorButton(
                          title: 'More details',
                          pressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderScreen()));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

Container statusWidget(String time, String status, bool isActive) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: (isActive) ? Colors.green : Colors.white,
              border: Border.all(
                  color: (isActive) ? Colors.transparent : Colors.green,
                  width: 3)),
        ),
        SizedBox(
          width: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              status,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              time,
              style: TextStyle(fontSize: 15, color: Colors.grey),
            )
          ],
        )
      ],
    ),
  );
}
