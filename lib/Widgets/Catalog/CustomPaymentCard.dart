import 'package:flutter/material.dart';
import 'package:flutter_kit/model/PaymentRadioModel.dart';

class CustomPaymentCard extends StatefulWidget {
  @override
  createState() {
    return new CustomPaymentCardState();
  }
}

class CustomPaymentCardState extends State<CustomPaymentCard> {
  List<PaymentRadioModel> sampleData = new List<PaymentRadioModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new PaymentRadioModel(
      false,
      'assets/p1.png',
    ));
    sampleData.add(new PaymentRadioModel(
      false,
      'assets/p2.png',
    ));
    sampleData.add(new PaymentRadioModel(
      false,
      'assets/p1.png',
    ));
    sampleData.add(new PaymentRadioModel(
      false,
      'assets/p1.png',
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
                sampleData[index].isSelected = !sampleData[index].isSelected;
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
  final PaymentRadioModel _item;
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
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(_item.url))),
              ),
            )
          : Container(
              alignment: Alignment.center,
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Theme.of(context).primaryColor),
                  image: DecorationImage(
                      image: AssetImage(_item.url), fit: BoxFit.fill)),
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
