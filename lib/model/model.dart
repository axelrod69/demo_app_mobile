import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './dataModel.dart';


class ModelClass with ChangeNotifier {
  List<dynamic> _data = [];

  List<dynamic> get data {
    return [..._data];
  }

  Future<void> getData() async {
    final url = Uri.http('192.168.0.6:3007', '/fetchData');
    final response = await http.get(url);
    print(response);
    final List<User> users = userFromJson(response.body);
    final extractedData = json.decode(response.body);
    print(extractedData);
    print(users);
    _data = users;
    print(_data);
  }

//  Future<void> getData() async {
//    final url = Uri.http('192.168.0.6:3007', '/fetchData');
//    final response = await http.get(url);
//    print(response);
//    final extractedData = json.decode(response.body);
//    print(extractedData);
//    Map<String, Model> temp = {};
//    extractedData.forEach((value) {
//      temp.putIfAbsent(
//          value['_id'],
//              () =>
//              Model(district: value['district']));
//    });
//    print(temp);
//    _data = temp.values.toList();
//    print(_data);
//  }
}

