import 'package:flutter/material.dart';
import 'package:flutter_kit/Widgets/Common/OutlineIconContainer.dart';
import 'package:flutter_kit/model/PaymentRadioModel.dart';
import 'package:flutter_kit/model/SizeRadioModel.dart';
import 'package:flutter_kit/model/TopicsRadioModel.dart';

class CustomTopicsCard extends StatefulWidget {
  @override
  createState() {
    return new CustomTopicsCardState();
  }
}

class CustomTopicsCardState extends State<CustomTopicsCard> {
  List<TopicsRadio> sampleData = new List<TopicsRadio>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(
        new TopicsRadio(isSelected: false, title: 'Handmade', icon: Icons.add));
    sampleData.add(
        new TopicsRadio(isSelected: false, title: 'Weather', icon: Icons.add));
    sampleData.add(
        new TopicsRadio(isSelected: false, title: 'Fashion', icon: Icons.add));
    sampleData.add(new TopicsRadio(
        isSelected: false, title: 'Technology', icon: Icons.add));
    sampleData.add(
        new TopicsRadio(isSelected: false, title: 'Trending', icon: Icons.add));
    sampleData.add(
        new TopicsRadio(isSelected: false, title: 'Ploitics', icon: Icons.add));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 1.5),
        scrollDirection: Axis.vertical,
        itemCount: sampleData.length,
        itemBuilder: (BuildContext context, int index) {
          return new InkWell(
            //highlightColor: Colors.red,
            splashColor: Colors.blueAccent,
            onTap: () {
              setState(() {
                // sampleData.forEach((element) => element.isSelected = false);
                sampleData[index].isSelected = !sampleData[index].isSelected;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: new RadioItem(sampleData[index])),
            ),
          );
        },
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final TopicsRadio _item;
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
                height: 100,
                width: 150,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 35.0,
                    ),
                    Text(
                      _item.title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          : Container(
              alignment: Alignment.center,
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Theme.of(context).primaryColor),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    _item.icon,
                    size: 35.0,
                    color: Theme.of(context).primaryColor.withOpacity(0.6),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    _item.title,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 18),
                  )
                ],
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
