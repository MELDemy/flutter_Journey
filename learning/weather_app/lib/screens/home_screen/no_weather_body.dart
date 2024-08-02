import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({required this.pushSearchScreen, super.key});

  final VoidCallback pushSearchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'there is no weather 😔',
            style: TextStyle(fontSize: 30),
          ),
          TextButton(
            child: Text(
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
