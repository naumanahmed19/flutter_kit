import 'package:flutter/material.dart';
import 'package:flutter_kit/Screen/catalog/ProductDetailScreen.dart';
import 'package:flutter_kit/Widgets/Common/BaseContainer.dart';
import 'package:flutter_kit/Widgets/Common/BaseDropDown.dart';
import 'package:flutter_kit/Widgets/Common/BaseHeader.dart';
import 'package:flutter_kit/Widgets/Common/BaseImage.dart';
import 'package:flutter_kit/mixins/BaseMixins.dart';
import 'package:flutter_kit/model/ProductImages.dart';
import 'package:flutter_kit/model/ProductModel.dart';

class ProductScreen extends StatelessWidget with BaseMixins {
  final ScrollController scrollController = new ScrollController();
  final List<ProductModel> items = <ProductModel>[
    ProductModel(
      id: '1',
      image: [
        'assets/images/2b.jpg',
        'assets/images/2c.jpg',
        'assets/images/2b.jpg',
      ],
      title: 'Bolbbing',
      des: 'Dark warm jacket',
      newPrice: '200',
      oldPrice: '320',
    ),
    ProductModel(
      id: '2',
      image: [
        'assets/female/3a.jpg',
        'assets/female/3b.jpg',
        'assets/female/3c.jpg',
      ],
      title: 'Puma',
      des: 'Dark warm jacket',
      newPrice: '200',
      oldPrice: '320',
    ),
    ProductModel(
      id: '3',
      image: [
        'assets/images/4a.jpg',
        'assets/images/4b.jpg',
        'assets/images/4c.jpg',
      ],
      title: 'view',
      des: 'rk warm jacket',
      newPrice: '200',
      oldPrice: '320',
    ),
    ProductModel(
      id: '4',
      image: [
        'assets/female/fc5.jpg',
        'assets/female/fc.jpg',
        'assets/female/fc2.jpg',
        'assets/female/fc4.jpg'
      ],
      title: 'Bolbbing',
      des: 'Dark warm jacket',
      newPrice: '200',
      oldPrice: '320',
    ),
    ProductModel(
      id: '5',
      image: [
        'assets/female/fc5.jpg',
        'assets/female/fc.jpg',
        'assets/female/fc2.jpg',
        'assets/female/fc4.jpg'
      ],
      title: 'Bolbbing',
      des: 'Dark warm jacket',
      newPrice: '200',
      oldPrice: '320',
    ),
    ProductModel(
      id: '6',
      image: [
        'assets/female/fc5.jpg',
        'assets/female/fc.jpg',
        'assets/female/fc2.jpg',
        'assets/female/fc4.jpg'
      ],
      title: 'Bolbbing',
      des: 'Dark warm jacket',
      newPrice: '200',
      oldPrice: '320',
    )
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: BaseHeader(
            title: 'Clothing',
            icon: Icon(Icons.menu_open),
            pressed: () {},
          ),
        ),
        Expanded(
          child: BaseContainer(
            height: height,
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: Row(
                    children: [
                      BaseDropDown(
                        title: 'Bestseller',
                        route: () {},
                      )
                    ],
                  ),
                ),
                Divider(),
                Expanded(
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    controller: scrollController,
                    itemCount: items.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: responsive(context,
                          isPhone: 0.65, isSmallPhone: 0.57, isTablet: 0.73),
                      crossAxisCount: responsive(context,
                          isPhone: 2, isSmallPhone: 2, isTablet: 3),
                    ),
                    itemBuilder: (context, index) {
                      print(items[index].title);
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetailScreen(
                                          productModel: items[index],
                                          images: items[index].image,
                                        )));
                          },
                          child: Container(
                            // width: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 190,
                                      width: width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.grey.withOpacity(0.3),
                                      ),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            items[index].image[0],
                                            height: 100,
                                            // fit: BoxFit.fitHeight,
                                          )),
                                    ),
                                    Positioned(
                                      right: 5,
                                      child: IconButton(
                                          icon: Icon(
                                            Icons.more_horiz,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          onPressed: () {}),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5.0, top: 5),
                                  child: Text(
                                    items[index].title,
                                    style: Theme.of(context).textTheme.title,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    items[index].des,
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5.0, top: 5, right: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                        '\$ ${items[index].newPrice}',
                                        style: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor),
                                      ),
                                      Spacer(),
                                      Text(
                                        '\$ ${items[index].oldPrice}',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
