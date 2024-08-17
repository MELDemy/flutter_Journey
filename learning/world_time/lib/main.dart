import 'package:flutter/material.dart';
import 'package:world_time/Pages/Home.dart';
import 'package:world_time/Pages/Loading.dart';
import 'package:world_time/Pages/Loading2.dart';
import 'package:world_time/Pages/Location.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/loading2',
    routes: {
      '/':(context)=>Loading(),
      '/loading2':(context)=>loading2(),
      '/home':(context)=>Home(),
      '/location':(context)=>Location()
    },
  )
  );
}