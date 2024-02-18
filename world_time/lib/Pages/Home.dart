import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
class _HomeState extends State<Home> {
  Map data ={};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(
        Duration(seconds: 1),
            (Timer t){
          setState(() {
            data['time'] = data['time'].add(Duration(seconds: 1));
          });
        });
  }
  @override
  Widget build(BuildContext context) {

    try {
      data = data.isEmpty ? ModalRoute
          .of(context)
          ?.settings
          .arguments as Map : data;

      // print("data is : $data");
    }catch(e){
      data = {'location': 'Cairo',
        'time': 'Connection error',
        'flag': 'egypt',
        'isDayTime': false,
      };
    }
    String BG_Image=data['isDayTime']? 'Day.jpg':'Night.jpg' ;

    return Scaffold(
      backgroundColor: HexColor("#326082"),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$BG_Image'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: [
                TextButton.icon(
                    onPressed: ()async {
                      dynamic result = await Navigator.pushNamed(context, '/location');
                      setState(() {
                        data= {
                          'time': result['time'],
                          'location': result['location'],
                          'isDayTime': result['isDayTime'],
                          'flag': result['flag'],
                        };
                      });
                      },
                    icon: Icon(
                      Icons.location_on_sharp,
                      color: Colors.white,
                    ),
                    label: Text(
                      data['location'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:40
                      ),
                    )
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  ],
                ),
                SizedBox(height: 20,),
                Text(DateFormat.jm().format(data['time']),
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

              ]
            ),
          ),
        ),
      ),

    );
  }
}
