import 'package:flutter_kit/model/ProductImages.dart';

class ProductModel {
  String id;
  List<String> image;
  String title;
  String des;
  String newPrice;
  String oldPrice;
  ProductModel(
      {this.id,
      this.image,
      this.title,
      this.des,
      this.newPrice,
      this.oldPrice});
}
