class WeatherModel {
  String? cityName;
  double? temparature;
  double? wind;
  int? humidity;
  double? feelLike;
  int? pressure;

  WeatherModel({
    this.cityName,
    this.feelLike,
    this.humidity,
    this.pressure,
    this.temparature,
    this.wind,
  });
  WeatherModel.fromJson(Map<String, dynamic> json) {
    cityName = json['name'];
    temparature = json['main']['temp'];
    wind = json['wind']['speed'];
    pressure = json['main']['pressure'];
    humidity = json['main']['humidity'];
    feelLike = json['main']['feels_like'];
  }
}
