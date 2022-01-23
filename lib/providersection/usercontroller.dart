import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Userdata extends ChangeNotifier {
  List<dynamic> _list = [];
  bool _error = false;
  String _errowmassage = '';

  List<dynamic> get datalist => _list;
  bool get error => _error;
  String get errormasses => _errowmassage;

  Future<void> get getdata async {
    final responce =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (responce.statusCode == 200) {
      try {
        _list = jsonDecode(responce.body);
        _error = false;
      } catch (e) {
        _list = [];
        _error = true;
        _errowmassage = e.toString();
      }
    } else {
      _error = true;
      _errowmassage = "Please check your internet ";
      _list = [];
    }
    notifyListeners();
  }
}
