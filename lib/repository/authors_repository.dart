import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/authors_model.dart';

Future<List<AuthorsModel>> AuthorAPI() async{
  var response = await http.get(Uri.parse("https://codewithmey.herokuapp.com/api/authors?populate=*"));
  var responseJson = jsonDecode(response.body);
  var data = responseJson["data"] as List;
  var Authordata = data.map((e) => AuthorsModel.fromMap(e)).toList();
  return Authordata;
}