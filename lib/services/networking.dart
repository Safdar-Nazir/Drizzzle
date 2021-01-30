import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  http.Response response;
  NetworkHelper({@required this.url}) {
    response = http.get(url);
  }
  final String url;
}
