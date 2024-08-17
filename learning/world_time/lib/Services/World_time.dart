import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';


class WorldTime{
   String location; // location name
   String url;
   String flag;
   late dynamic time; // location time
   bool isDayTime=true;

  WorldTime({required this.location,required this.url,required this.flag});

  Future<void> getTime() async {
   try{
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map data =jsonDecode(response.body);
    // print(data);

    String datetime =data['utc_datetime'];
    String offset = data['utc_offset'].substring(0,3);
    // print(datetime);
    // print(offset);

    DateTime now = DateTime.parse(datetime);

    now = now.add(Duration(hours: int.parse(offset)));
    // print(now);
    isDayTime = now.hour >= 6 && now.hour < 19? true : false ;
    Timer.periodic(
        Duration(seconds: 5),
            (Timer t){
          // print(now);
          now = now.add(Duration(hours: 1));
        });
    // print('Hour is :${now.hour}');
     time = DateFormat.jm().format(now);
     time=now;
  }catch(e){
        print("error happened: $e");
        time = 'error loadin data';
   }
  }
}
