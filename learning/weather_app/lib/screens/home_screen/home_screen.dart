import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/screens/home_screen/info_weather_body.dart';
import 'package:weather_app/screens/home_screen/no_weather_body.dart';
import 'package:weather_app/screens/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
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
          title: const Text('Weather Details Screen'),
          actions: [
            IconButton(
              onPressed: () {
                pushSearchScreen(context);
              },
              icon: const Icon(
                Icons.search,
                // color: Colors.black,
              ),
            )
          ],
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state is InitialState) {
              return NoWeatherBody(pushSearchScreen: () {
                pushSearchScreen(context);
              });
            } else if (state is InfoWeatherState) {
              // ignore: prefer_const_constructors
              return InfoWeatherBody();
            } else if (state is LodaingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is FailureWeatherState) {
              return NoWeatherBody(
                  errMsg: state.errorMessage,
                  pushSearchScreen: () {
                    pushSearchScreen(context);
                  });
            } else
              return Text("Unexpected error, Please contact the Developer!!");
          },
        ));
  }
}
