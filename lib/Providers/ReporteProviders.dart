import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:garbagereportapp/models/Reporte.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

class ReporteProvider extends ChangeNotifier {
  List<Reportes> reporte = [];
  final String _host = 'my.api.mockaroo.com';
  final Map<String, dynamic> _parameters = {'key': '7e9c4620'};
  reporteProvider() {
    _reporte();
  }

  //https://my.api.mockaroo.com/reporte.json?key=7e9c4620
  
  _reporte() async {
    const String endPoint = 'reporte.json';
    final url = Uri.https(_host, endPoint, _parameters);
    final client = RetryClient(http.Client());

    try {
      final response = await client.read(url);
      notifyListeners();
      print(response);
      reporte = List<Reportes>.from(
        json.decode(response).map((x) => Reportes.fromJson(x)));
    } finally {
      client.close();
    }
  }
}