//2. Import the required packages.
// import 'dart:convert';
import 'networking.dart';

// import 'package:http/http.dart' as http; //TODO 1.2: Run flutter pub add http  --- to get the http dependencies
const apiKey = ''; //personal API key obtained from coinapi.io to enable live coin updates
const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';

// class CoinModel {
//   Future<dynamic> getExchangeRate(String currency)async{
//     NetworkHelper networkHelper = NetworkHelper('$coinApiURL?asset_id_base=$base?asset_id_quote=$quote&appid=$apiKey&units=metric');
//
//     var weatherData = await networkHelper.getData();
//     return weatherData;
//   }




const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];


// class WeatherModel {
//   Future<dynamic> getCityWeather(String cityName)async{
//     NetworkHelper networkHelper = NetworkHelper('$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric');
//
//     var weatherData = await networkHelper.getData();
//     return weatherData;
//   }


class CoinData {
  //TODO 3: Update getCoinData to take the selectedCurrency as an input.
  Future <dynamic> getCoinData(String requestURL) async {
    //TODO 4: Update the URL to use the selectedCurrency input.
    // String requestURL = '$coinAPIURL/BTC/USD?apikey=$apiKey';
    // http.Response response = await http.get(requestURL);
    // NetworkHelper networkHelper = NetworkHelper('$coinAPIURL/BTC/USD?apikey=$apiKey');
    // if (response.statusCode == 200) {
    //   var decodedData = jsonDecode(response.body);
    //   var lastPrice = decodedData['rate'];
    //   return lastPrice;
    // } else {
    //   print(response.statusCode);
    //   throw 'Problem with the get request';
    // }
  }
}

class CoinModel {
  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
        '$coinAPIURL/BTC/USD?apikey=$apiKey');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }
}