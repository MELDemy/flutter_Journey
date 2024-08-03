import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  String? errMsg;
  NoWeatherBody({this.errMsg, required this.pushSearchScreen, super.key});

  final VoidCallback pushSearchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          errMsg == null
              ? SizedBox()
              : Text(
                  '${errMsg} 😔',
                  style: TextStyle(fontSize: 18),
                ),
          TextButton(
            child: const Text(
              'Start searching now 🔍',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            onPressed: () {
              pushSearchScreen();
            },
          ),
        ],
      ),
    );
  }
}
