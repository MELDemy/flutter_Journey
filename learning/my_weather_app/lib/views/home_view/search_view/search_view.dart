import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_weather_app/cubit/home_cubit/home_view_cubit/home_view_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Search a City"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              onSubmitted: (cityName) {
                BlocProvider.of<HomeViewCubit>(context)
                    .viewCityInfo(context, cityName);
                Navigator.pop(context);
              },
              decoration: const InputDecoration(
                hintText: "CityName",
                label: Text("Search a City"),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.white,
                )),
              ),
            ),
          ),
        ));
  }
}
