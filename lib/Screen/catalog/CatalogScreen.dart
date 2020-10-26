import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_kit/Screen/catalog/ProductScreen.dart';
import 'package:flutter_kit/Widgets/Common/BaseContainer.dart';
import 'package:flutter_kit/Widgets/Common/BaseHeader.dart';
import 'package:flutter_kit/Widgets/Common/BaseIconContainer.dart';
import 'package:flutter_kit/Widgets/Common/OutlineIconContainer.dart';
import 'package:flutter_kit/Widgets/Login/OutilneSocialButton.dart';
import 'package:flutter_kit/model/SubCategory.dart';

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Column(
            children: [
              BaseHeader(
                title: 'Catalog',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                          fontSize: 30, color: Colors.grey.withOpacity(0.6))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  //shape: BoxShape.rectangle\
                ),
                tabs: [
                  Tab(
                    child: Text(
                      'Men',
                      style: Theme.of(context).textTheme.subtitle,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Women',
                      style: Theme.of(context).textTheme.subtitle,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Kids',
                      style: Theme.of(context).textTheme.subtitle,
                    ),
                  ),
                ],
                onTap: (index) {
                  print(index);
                },
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SubCategoryContainer(height: height),
                    SubCategoryContainer(height: height),
                    SubCategoryContainer(height: height)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SubCategoryContainer extends StatelessWidget {
  SubCategoryContainer({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    List data = [
      SubCategory(
          icon: Icon(AntDesign.skin, color: Theme.of(context).primaryColor),
          title: 'Clothing'),
      SubCategory(
          icon: Icon(MaterialCommunityIcons.shoe_formal,
              color: Theme.of(context).primaryColor),
          title: 'Shoes'),
      SubCategory(
          icon: Icon(Ionicons.ios_shirt, color: Theme.of(context).primaryColor),
          title: 'Accessories'),
      SubCategory(
          icon: Icon(Ionicons.ios_shirt, color: Theme.of(context).primaryColor),
          title: 'Beauty and health'),
      SubCategory(
          icon: Icon(Ionicons.ios_shirt, color: Theme.of(context).primaryColor),
          title: 'Toys'),
      SubCategory(
          icon: Icon(Octicons.book, color: Theme.of(context).primaryColor),
          title: 'Books'),
      SubCategory(
          icon: Icon(Octicons.book, color: Theme.of(context).primaryColor),
          title: 'Books')
    ];
    return BaseContainer(
      height: height / 1.6,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 15, right: 8),
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, int i) {
              return Container(
                  // padding: EdgeInsets.only(left: 8, right: 8),
                  height: 70,
                  child: Row(
                    children: [
                      BaseIconContainer(
                        icon: data[i].icon,
                        color: Color(0xFFf4f5fa),
                      ),
                      Text(
                        data[i].title,
                        style: Theme.of(context).textTheme.title,
                      ),
                      Spacer(),
                      OutlineIconContainer(
                        widget: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Theme.of(context).primaryColor,
                            size: 14,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductScreen()));
                          },
                        ),
                      )
                    ],
                  ));
            }),
      ),
    );
  }
}
