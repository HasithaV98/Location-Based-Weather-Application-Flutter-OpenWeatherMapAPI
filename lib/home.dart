import 'package:flutter/material.dart';
import 'package:wether_application/model/weatherModel.dart';
import 'package:wether_application/service/weatherService.dart';
import 'package:wether_application/views/information.dart';
import 'package:wether_application/views/weather.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherApiClient weatherApiClient = WeatherApiClient();
  WeatherModel? data;
  /*@override
  void initState() {
    // TODO: implement initState
    super.initState();
    weatherApiClient.getCuttertWeather('colombo');
  }*/
  Future<void> getData() async {
    data = await weatherApiClient.getCuttertWeather('colombo');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 2, 87),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 2, 87),
        elevation: 0.0,
        title: const Text(
          'Weather Report',
          style: TextStyle(
            color: Colors.white,
            //fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu_outlined,
            color: Colors.white,
          ),
        ),
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                children: [
                  weather(Icons.wb_sunny_rounded, '${data!.temparature}',
                      '${data!.cityName}'),
                  const SizedBox(
                    height: 50.0,
                  ),
                  const Text(
                    'Information',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(
                    thickness: 5.0,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  information('${data!.wind}', '${data!.pressure}',
                      '${data!.humidity}', '${data!.feelLike}'),
                ],
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Container();
          }),
    );
  }
}
