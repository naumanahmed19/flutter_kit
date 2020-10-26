import 'package:flutter/material.dart';
import 'package:flutter_kit/Screen/CartScreen.dart';
import 'package:flutter_kit/Widgets/Catalog/CustomRadioButton.dart';
import 'package:flutter_kit/Widgets/Catalog/CustomRadioColorButton.dart';
import 'package:flutter_kit/Widgets/Common/BaseColorButton.dart';
import 'package:flutter_kit/Widgets/Common/BaseContainer.dart';
import 'package:flutter_kit/Widgets/Common/BaseHeader.dart';
import 'package:flutter_kit/Widgets/Common/BaseImage.dart';
import 'package:flutter_kit/Widgets/Common/OutlineIconContainer.dart';
import 'package:flutter_kit/helpers/hero_photo_viewer.dart';
import 'package:flutter_kit/model/ProductImages.dart';
import 'package:flutter_kit/model/ProductModel.dart';

class ProductDetailScreen extends StatelessWidget {
  final List<String> images;
  final ProductModel productModel;
  ProductDetailScreen({this.images, this.productModel});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        ListView.builder(
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HeroPhotoViewWrapper(
                        // heroTag: 'attachment-' + index.toString(),
                        imageProvider: AssetImage(images[index]),
                      ),
                    ),
                  );
                },
                child: BaseImage(
                  imageUrl: images[index],
                  height: height,
                  width: width,
                ),
              );
            }),
        DraggableScrollableSheet(
            initialChildSize: 0.3,
            // minChildSize: 0.1,
            // maxChildSize: 0.8,
            builder: (BuildContext context, scroll) {
              return ListView.builder(
                  itemCount: 1,
                  controller: scroll,
                  itemBuilder: (context, scroll) {
                    return BaseContainer(
                      // height: height / 3,
                      height: height,
                      width: width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      productModel.title,
                                      style: Theme.of(context).textTheme.title,
                                    ),
                                    Text(productModel.des,
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.6)))
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Text(
                                      '\$${productModel.newPrice}',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color:
                                              Theme.of(context).primaryColor),
                                    ),
                                    Text(
                                      '\$${productModel.oldPrice}',
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(height: 50, child: CustomRadioColor()),
                          SizedBox(
                            height: 10,
                          ),
                          Container(height: 70, child: CustomRadio()),
                          SizedBox(
                            height: 68,
                          ),
                          Container(
                            height: 45,
                            width: width / 1.3,
                            child: BaseColorButton(
                              title: "Add to cart",
                              pressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CartScreen()));
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            }),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: BaseHeader(
            title: '',
          ),
        ),
      ],
    ));
  }
}
