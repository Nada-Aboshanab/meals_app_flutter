import 'dart:convert';

import '../detailsapi.dart';
import 'package:http/http.dart' as http;


class DetailServices {
  Future<Detailsapi> getMealsByCategory(String catid) async {
    String baseUrl = 'https://www.themealdb.com/api/json/v1/1/lookup.php?i=$catid';
    Uri url = Uri.parse(baseUrl);
    http.Response response = await http.get(url);
    //Map<String, dynamic> data = jsonDecode(response.body);
    Detailsapi det=Detailsapi.fromJson(jsonDecode(response.body));
    print("detail Response ${det.meals?.length}");
    return det;
  }}