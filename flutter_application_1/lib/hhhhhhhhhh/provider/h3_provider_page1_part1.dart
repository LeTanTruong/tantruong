//provider\h3_provider_page1_part1.dart
import 'dart:async';
import 'dart:convert';
import 'package:flutter_application_1/hhhhhhhhhh/items/h2_items_page1_part1.dart';
import 'package:flutter_application_1/hhhhhhhhhh/items/h7_items2_page2_part1.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ProviderPage1Part1 extends ChangeNotifier {
  Future<List<Items>> getListItems() async {
    const token =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIzOWFiZDRiYmRlY2M0ZjE2YTZjNDZhZDdhMGI3NDNiYyIsInN1YiI6IjYzMTYyMzY3MTUxMWFhMDA3YmE0OTkwMiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.UqPxUAnM8m8Vywqo-LrJYT2rvpXG1r9a5BMdo6tg82Y';
    final url =
        'https://api.themoviedb.org/3/movie/popular?language=en-US&page=1'; //

    final response = await http.get(Uri.parse(url), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    final Map data = jsonDecode(response.body);
    final List<dynamic> result = data['results'];
    /////
    List<Items> listItems = List<Items>.from(
        result.map((e) => Items.fromJson(jsonEncode(e))).toList());
    return listItems;
  }

  /////////////////////////////////////////////////////////////////////////////
  Future<List<Items21>> getListItems21(int id) async {
    const token =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIzOWFiZDRiYmRlY2M0ZjE2YTZjNDZhZDdhMGI3NDNiYyIsInN1YiI6IjYzMTYyMzY3MTUxMWFhMDA3YmE0OTkwMiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.UqPxUAnM8m8Vywqo-LrJYT2rvpXG1r9a5BMdo6tg82Y';
    final url =
        'https://api.themoviedb.org/3/movie/popular?language=en-US&page=$id'; //https://api.themoviedb.org/3/list/1?language=en-US

//hình category
    final uri = Uri.parse(url); //\\
    final finalUri = uri.replace(queryParameters: {}); //"special": "true" //\\

    final response = await http.get(Uri.parse(url), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    final Map data = jsonDecode(response.body);
    final List<dynamic> result = data['items'];
    /////
    List<Items21> listItems = List<Items21>.from(
        result.map((e) => Items21.fromJson(jsonEncode(e))).toList());
    return listItems;
  }
}
