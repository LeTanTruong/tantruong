import 'dart:async';
import 'dart:convert';
import 'package:flutter_application_1/models/model_home.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ProviderRepositoryHome extends ChangeNotifier {
  Future<List<ModelHome>> getListModelHome(int page) async {
    const token =
        "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIzOWFiZDRiYmRlY2M0ZjE2YTZjNDZhZDdhMGI3NDNiYyIsInN1YiI6IjYzMTYyMzY3MTUxMWFhMDA3YmE0OTkwMiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.UqPxUAnM8m8Vywqo-LrJYT2rvpXG1r9a5BMdo6tg82Y";
    final url =
        "https://api.themoviedb.org/3/movie/popular?language=en-US&page=$page";

    final response = await http.get(Uri.parse(url), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    final Map data = jsonDecode(response.body);
    final List<dynamic> result = data['results'];
    /////
    List<ModelHome> listModelHome = List<ModelHome>.from(
        result.map((e) => ModelHome.fromJson(jsonEncode(e))).toList());
    return listModelHome;
  }
}
