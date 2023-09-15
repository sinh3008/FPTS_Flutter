import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetWorkHelper {
  NetWorkHelper({required this.url});

  final url;

  // Future getData() async {
  //   http.Response response = await http.get(url as Uri);
  //   if (response.statusCode == 200) {
  //     String data = response.body;
  //     var decodedData = jsonDecode(data);
  //     return decodedData;
  //   }else{
  //     if (kDebugMode) {
  //       print(response.statusCode);
  //     }
  //   }
  // }

  final dio = Dio();

  Future getData({String q = "hanoi"}) async {
    Response response;
    response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?q=$q&units=metric&appid=476039ddfa732c52a0cd4abae0f5ad20');
    print(response.data.toString());
    if (response.statusCode == 200) {
      return response.data;
    }
  }
}
