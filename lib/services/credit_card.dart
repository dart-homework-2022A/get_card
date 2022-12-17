import 'dart:convert';
import 'package:get_card/models/credit_card.dart';
import 'package:http/http.dart' as http;

Future<CreditCard> getCard() async {
  Uri url = Uri(
    scheme: 'https',
    host: 'randommer.io',
    path: 'api/Card/',
  );

  //  Create a header for the request
  Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'X-Api-Key': 'a45a594e67814c30883787b95fec5af1'
  };
// Make a get request to the API
  http.Response response = await http.get(url, headers: headers);
  // Convert the response body to a Map
  Map datafromjson = jsonDecode(response.body);
  CreditCard data = CreditCard.fromJson(datafromjson);
  // Return the card
  return data;
}
