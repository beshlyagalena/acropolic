import 'package:acropolic/application/global.dart';
import 'package:flutter/material.dart';
import 'package:acropolic/application/global.dart' as global;

class CusAudioPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.transparent,
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children : <Widget>[
          new Expanded(
            flex: 1,
            child: new Container(
              child: new Image(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            )
          ),
          new Expanded(
              flex: 1,
              child: new Column(
                children: <Widget>[
                  new SizedBox(height: 20,),
                  new Text(
                    Language.introduction[global.selectedLan],
                    style: TextStyle(fontWeight: FontWeight.bold, color : Colors.white, fontSize: 20),
                  ),
                  new SizedBox(height: 20,),
                  new FlutterSlider(
                    values: [300],
                    max: 500,
                    min: 0,
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      _lowerValue = lowerValue;
                      _upperValue = upperValue;
                      setState(() {});
                    },
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}