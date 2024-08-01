import 'package:flutter/material.dart';
import 'package:weather_app/screens/search_screen.dart';

class noWeatherBody extends StatelessWidget {
  const noWeatherBody({super.key});

  pushSearchScreen(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SearchScreen()));
  }

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
              pushSearchScreen(context);
            },
          ),
        ],
      ),
    );
  }
}
