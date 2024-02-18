import 'package:flutter/material.dart';
import 'package:world_time/Services/World_time.dart';
class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  List<WorldTime> locations = [
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  void updateTime(index) async{
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context,{
      'location' : instance.location,
      'time' : instance.time,
      'flag' : instance.flag,
      'isDayTime': instance.isDayTime,
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text(
          'Choose a Location',
          style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemBuilder: (context,index){
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal:20),
            child: Card(
              child: ListTile(
                onTap: (){
               updateTime(index);
                },
                title:Text( locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/Flags/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
        itemCount: locations.length,
      ),
    );
  }
}