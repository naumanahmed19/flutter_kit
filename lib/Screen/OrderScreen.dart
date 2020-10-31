import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_kit/Screen/OrderTrackingScreen.dart';
import 'package:flutter_kit/Widgets/Common/BaseContainer.dart';
import 'package:flutter_kit/Widgets/Common/BaseHeader.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BaseHeader(
              title: 'My Orders',
              icon: (Icon(Icons.search)),
              pressed: () {},
            ),
            Expanded(
              child: BaseContainer(
                height: height,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return OrderTile();
                      }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OrderTile extends StatelessWidget {
  const OrderTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OrderTrackingScreen()));
          },
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 100,
              width: 55,
              color: Colors.orangeAccent.withOpacity(0.3),
              child: Icon(MaterialIcons.local_shipping),
            ),
          ),
          title: Text(
            '#80996',
            style: Theme.of(context).textTheme.title,
          ),
          subtitle: Text('3 April'),
          trailing: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.orange.withOpacity(0.7),
            ),
            height: 40,
            width: 100,
            child: Text('Shipping',
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Divider(
            thickness: 2,
          ),
        )
      ],
    );
  }
}
