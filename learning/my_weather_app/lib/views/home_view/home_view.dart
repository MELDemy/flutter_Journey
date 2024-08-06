import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_weather_app/cubit/home_cubit/home_view_cubit/home_view_cubit.dart';
import 'package:my_weather_app/views/home_view/home_appbar.dart';
import 'package:my_weather_app/views/home_view/home_body/info_weather_body.dart';
import 'package:my_weather_app/views/home_view/home_body/noinfo_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: BlocBuilder<HomeViewCubit, HomeViewState>(
        builder: (context, state) {
          if (state is CityInfoState) {
            return InfoWeatherBody();
          } else if (state is LoadingState) {
            return LoadingBody();
          } else if (state is FailureState) {
            return NoInfoBody(errMsg: state.errMsg);
          } else {
            return NoInfoBody();
          }
        },
      ),
    );
  }
}

class LoadingBody extends StatelessWidget {
  const LoadingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}
