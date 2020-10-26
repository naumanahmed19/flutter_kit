import 'package:flutter/material.dart';
import 'package:flutter_kit/Widgets/Common/OutlineIconContainer.dart';
import 'package:flutter_kit/model/SizeRadioModel.dart';

class CustomRadio extends StatefulWidget {
  @override
  createState() {
    return new CustomRadioState();
  }
}

class CustomRadioState extends State<CustomRadio> {
  List<RadioModel> sampleData = new List<RadioModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new RadioModel(
      false,
      'S',
    ));
    sampleData.add(new RadioModel(
      false,
      'M',
    ));
    sampleData.add(new RadioModel(
      false,
      'L',
    ));
    sampleData.add(new RadioModel(
      false,
      'XL',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
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
            child: Container(child: new RadioItem(sampleData[index])),
          );
        },
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
      ),
      child: _item.isSelected
          ? Card(
              color: Colors.white,
              borderOnForeground: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              child: Container(
                alignment: Alignment.center,
                height: 70,
                width: 70,
                child: Center(
                    child: Text(
                  _item.buttonText,
                  style: TextStyle(fontSize: 26),
                )),
              ),
            )
          : OutlineIconContainer(
              height: 60,
              width: 60,
              widget: Text(
                _item.buttonText,
                style: TextStyle(
                    fontSize: 26, color: Theme.of(context).primaryColor),
              ),
            ),
    );
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
