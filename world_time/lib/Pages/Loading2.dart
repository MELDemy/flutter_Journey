import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class loading2 extends StatefulWidget {
  const loading2({super.key});

  @override
  State<loading2> createState() => _loading2State();
}

class _loading2State extends State<loading2> {
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
