import 'package:flutter/material.dart';
import 'package:flutter_kit/Screen/OrderScreen.dart';
import 'package:flutter_kit/Widgets/Common/BaseColorButton.dart';
import 'package:flutter_kit/Widgets/Common/BaseContainer.dart';
import 'package:flutter_kit/Widgets/Common/BaseHeader.dart';
import 'package:flutter_kit/Widgets/Common/BaseIconContainer.dart';
import 'package:flutter_kit/Widgets/Common/BaseImage.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              BaseHeader(
                title: 'Shopping cart',
                icon: Icon(Icons.more_horiz),
                pressed: () {},
              ),
              Expanded(
                child: Stack(
                  children: [
                    BaseContainer(
                      height: height,
                      width: width,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              BaseIconContainer(
                                icon: Icon(
                                  Icons.add_shopping_cart_outlined,
                                  color: Theme.of(context).primaryColor,
                                ),
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              Text(
                                'In your cart',
                                style: Theme.of(context).textTheme.title,
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, right: 20),
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Theme.of(context).primaryColor),
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: 4,
                                itemBuilder: (context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10, right: 10),
                                    child: Row(
                                      children: [
                                        BaseImage(
                                          radius: 10,
                                          height: 120,
                                          width: 100,
                                          imageUrl: 'assets/female/3a.jpg',
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 120,
                                            width: 100,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  'Benetton',
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                                Text(
                                                  'Ex-Boyfrind Trucker jacket',
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  maxLines: 2,
                                                ),
                                                Text(
                                                  'Blue,M',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Theme.of(context)
                                                          .primaryColor),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '\$129.99',
                                          style: TextStyle(fontSize: 16),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: BaseContainer(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        height: 120,
                        width: width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: width / 1.2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: BaseColorButton(
                                  title: 'Go to check out',
                                  pressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OrderScreen()));
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
