//2. Import the required packages.
import 'dart:convert';
import 'package:http/http.dart' as http;

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

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '439414CF-30BA-4D12-9843-27E9B864812A';

class CoinData {
  Future getCoinData() async {


    String c = 'BTC';
    String t = 'USD';
    var url = Uri.https(
      'rest.coinapi.io',
      '/v1/exchangerate/$c/$t',
      {
        'apikey': apiKey,
      },
    );
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      var lastPrice = decodedData['rate'];
      print(lastPrice);
      return lastPrice;
    } else {
      print('error+ ${response.statusCode}');
      throw 'Problem with the get request';
    }
  }
}
