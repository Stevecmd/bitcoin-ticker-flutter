const apiKey = '04DBFA62-2B6B-4D2F-A713-20F414513102'; //personal API key obtained from coinapi.io to enable live coin updates
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

class CoinData {}
