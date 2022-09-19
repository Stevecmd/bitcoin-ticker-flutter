//Todo 2.1 Import the required packages.
import 'dart:convert';
import 'package:http/http.dart' as http; //TODO 1.2: Run flutter pub add http  --- to get the http dependencies
const apiKey = ''; //Todo 1.3 personal API key obtained from coinapi.io to enable live coin updates

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';


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


class CoinData {
  Future getCoinData(String selectedCurrency) async {
    //Todo 5: Return a Map of the results instead of a single value.
    Map<String, String> cryptoPrices = {};
    //Todo 4: Use a for loop here to loop through the cryptoList and request the data for each of them in turn.
    for (String crypto in cryptoList) {
      ////Todo 2.3: Update the URL to use the crypto symbol from the cryptoList, insert API key
      String requestURL =
          '$coinAPIURL/$crypto/$selectedCurrency?apikey=$apiKey';
      http.Response response = await http.get(Uri.parse(requestURL));
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        double lastPrice = decodedData['rate'];
        ////Todo 2.4: Create a new key value pair, with the key being the crypto symbol and the value being the lastPrice of that crypto currency.
        cryptoPrices[crypto] = lastPrice.toStringAsFixed(0);
        // cryptoPrices[crypto] = lastPrice.toString();
      } else {
        print(response.statusCode);
        throw 'Problem with the get request';
      }
    }
    return cryptoPrices;
  }
}

