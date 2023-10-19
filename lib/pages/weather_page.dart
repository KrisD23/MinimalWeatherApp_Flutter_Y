import 'package:flutter/material.dart ';
import 'package:lottie/lottie.dart';
import 'package:minimal_weather_yt/models/weather_model.dart';
import 'package:minimal_weather_yt/services/weather_service.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  // api key
  final _weatherService = WeatherService('4734d6df1ac31054f6e60e863df1882d');
  Weather? _weather;

  // fetch wather
  _fetchWeather() async {
    // get the current city
    final cityName = await _weatherService.getCurrentCity();

    // get wather for city
    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() => _weather = weather);
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchWeather();
  }

  // weather animation
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // city name
            Text(_weather?.cityName ?? "loading city name..."),

            // animation
            Lottie.asset('assets/thunder.json'),

            // temperature
            Text('${_weather?.temperature.round()}°C'),
          ],
        ),
      ),
    );
  }
}
