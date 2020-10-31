import 'package:flutter/material.dart';
import 'package:flutter_kit/Widgets/Common/BaseHeader.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BaseHeader(
            title: 'Payment',
            icon: Icon(Icons.more_horiz),
            pressed: () {},
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 28.0, left: 10),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 24, top: 35),
                    width: 260,
                    height: 2,
                    color: Theme.of(context).primaryColor,
                  ),
                  Row(
                    children: [
                      statusWidget(context, "Addres", true),
                      statusWidget(context, "Delivery", true),
                      statusWidget(context, "Payment", false),
                      statusWidget(context, "Confirmed", false),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Container statusWidget(context, String status, bool isActive) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Column(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: (isActive) ? Theme.of(context).primaryColor : Colors.white,
              border: Border.all(
                  color: (isActive)
                      ? Colors.transparent
                      : Theme.of(context).primaryColor,
                  width: 3)),
        ),
        SizedBox(
          width: 80,
          height: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              status,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        )
      ],
    ),
  );
}