import 'package:flutter/material.dart';
import 'package:flutter_kit/Widgets/Common/OutlineIconContainer.dart';
import 'package:flutter_kit/model/ColorRadioModel.dart';
import 'package:flutter_kit/model/SizeRadioModel.dart';

class CustomRadioColor extends StatefulWidget {
  @override
  createState() {
    return new CustomRadioColorState();
  }
}

class CustomRadioColorState extends State<CustomRadioColor> {
  List<ColorRadioModel> sampleData = new List<ColorRadioModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new ColorRadioModel(false, Colors.amber));
    sampleData.add(new ColorRadioModel(false, Colors.red));
    sampleData.add(new ColorRadioModel(false, Colors.green));
    sampleData.add(new ColorRadioModel(false, Colors.black));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: sampleData.length,
      itemBuilder: (BuildContext context, int index) {
        return new InkWell(
          //highlightColor: Colors.red,
          splashColor: Colors.blueAccent,
          onTap: () {
            setState(() {
              sampleData.forEach((element) => element.isSelected = false);
              sampleData[index].isSelected = true;
            });
          },
          child: new RadioItem(sampleData[index]),
        );
      },
    );
  }
}

class RadioItem extends StatelessWidget {
  final ColorRadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          left: 10,
        ),
        child: _item.isSelected
            ? Container(
                height: 50,
                width: 50,
                decoration:
                    BoxDecoration(color: _item.color, shape: BoxShape.circle),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              )
            : Container(
                height: 50,
                width: 50,
                decoration:
                    BoxDecoration(color: _item.color, shape: BoxShape.circle),
              ));
    //new Container(
    //   margin: EdgeInsets.all(15),
    //   height: 90.0,
    //   width: 50.0,
    //   child: new Center(
    //     child: new Text(_item.buttonText,
    //         style: new TextStyle(
    //             color: _item.isSelected ? Colors.white : Colors.black,
    //             //fontWeight: FontWeight.bold,
    //             fontSize: 18.0)),
    //   ),
    //   decoration: new BoxDecoration(
    //     color: _item.isSelected ? Colors.blueAccent : Colors.transparent,
    //     border: new Border.all(
    //         width: 1.0,
    //         color: _item.isSelected ? Colors.blueAccent : Colors.grey),
    //     borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
    //   ),
    // );
  }
}
