import 'package:acropolic/activities/audioplayer.dart';
import 'package:acropolic/application/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  Color primaryColor = AppColor.primaryYellow;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),

          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Row(
                children:[
                  SizedBox(width: 20),
                  Column(
                    children:[
                      ClipOval(
                        child: Material(
                          color: AppColor.primaryYellow, // button color
                          child: InkWell(
                            splashColor: Colors.red, // inkwell color
                            child: SizedBox(width: 56, height: 56, child: Icon(Icons.play_arrow , color: Colors.black, size: 50)),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => CusAudioPlayer()),);
                            },
                          ),
                        ),
                      ),
                      Text("Introduction" ,  style: TextStyle(color: AppColor.primaryYellow)),
                    ]
                  ),
                ]
              )
            ],
          ),

        ),
      ],
    );
  }
}