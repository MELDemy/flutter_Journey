import 'package:flutter/material.dart';
import 'package:world_time/Services/World_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '';
class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time='Loading';

  void setupWorldTime() async{
    // Map data = ModalRoute.of(context)?.settings.arguments as Map;
    WorldTime instance =
    WorldTime(
        location: 'Cairo',
        url:'Africa/Cairo',
        flag: 'egypt',
    );
    await instance.getTime();
   Navigator.pushReplacementNamed(
       context, '/home',
       arguments: {
         'location' : instance.location,
         'time' : instance.time,
         'flag' : instance.flag,
         'isDayTime': instance.isDayTime,
       }
   );
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: SpinKitPouringHourGlassRefined(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
