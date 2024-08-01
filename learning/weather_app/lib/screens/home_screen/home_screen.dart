import 'package:flutter/material.dart';
import 'package:weather_app/screens/home_screen/info_weather_body.dart';
import 'package:weather_app/screens/search_screen.dart';

class NoWeatherScreen extends StatelessWidget {
  const NoWeatherScreen({
    super.key,
  });

  pushSearchScreen(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SearchScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: [
          IconButton(
            onPressed: () {
              pushSearchScreen(context);
            },
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: InfoWeatherBody(),
    );
  }
}
