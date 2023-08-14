import 'dart:convert' as convert;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
  runApp(WeatherApi());
}

class WeatherApi extends StatelessWidget {
  const WeatherApi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherPage(
        title: 'Weather App',
      ),
    );
  }
}

class WeatherPage extends StatefulWidget {
  final String title;

  const WeatherPage({Key? key, required this.title}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  bool weatherFound = true;
  String currentIcon = "";
  String currentCityTemp = "-";
  String currentMaxTemp = "-";
  String currentMinTemp = "-";
  String description = "-";
  String cityName = "Varanasi";
  TextEditingController _controller = TextEditingController(text: "Varanasi");

  Future<void> getWeather(String cityname) async {
    String apiKey = "4a1f8a61b74546825af1e0be106e797b";
    final url = Uri.https("api.openweathermap.org", "/data/2.5/forecast",
        {'q': cityname, 'appid': apiKey, 'units': 'metric'});
    print(url);
    try {
      final response = await http.get(url);
      final jsonResponse = convert.jsonDecode(response.body);
      // print(jsonResponse);

      currentIcon = jsonResponse["list"][0]["weather"][0]["icon"].toString();
      currentCityTemp = jsonResponse["list"][0]["main"]["temp"].toString();
      currentMaxTemp = jsonResponse["list"][0]["main"]["temp_max"].toString();
      currentMinTemp = jsonResponse["list"][0]["main"]["temp_min"].toString();
      description =
          jsonResponse["list"][0]["weather"][0]["description"].toString();
      weatherFound = true;
      // print(currentCityTemp);
    } catch (ex) {
      weatherFound = false;
      currentCityTemp = "-";
      currentMaxTemp = "-";
      currentMinTemp = "-";
      description = "-";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WeatherApi"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              onChanged: (text) {
                cityName = text;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter the city name',
              ),
            ),
          ),
          ElevatedButton(
            child: const Text("Get Weather"),
            onPressed: () async {
              print("button press");
              await getWeather(cityName);
              setState(() {});
            },
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Current Temp",
                ),
                Text(currentCityTemp),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Max Temp",
                ),
                Text(currentMaxTemp),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Min Temp",
                ),
                Text(currentMinTemp),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Description",
                ),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}