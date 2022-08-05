import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/post_model.dart';

Future<List<PostModel>> PostAPI() async{
  var response = await http.get(Uri.parse("https://codewithmey.herokuapp.com/api/posts?populate=*"));
  var responseJson = jsonDecode(response.body);
  var data = responseJson["data"] as List;
  var Postdata = data.map((e) => PostModel.fromMap(e)).toList();
  return Postdata;
}