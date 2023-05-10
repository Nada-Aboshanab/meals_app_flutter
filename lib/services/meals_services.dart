import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task2/Beefmeals.dart';
import 'package:task2/models/meals_model.dart';

import '../Chickenmeal.dart';
import '../models/category_model.dart';

class BeefServices {
  Future<Chickenmeal> getMealsByCategory(String catName) async {
    String baseUrl = 'https://www.themealdb.com/api/json/v1/1/filter.php?c=$catName';
    Uri url = Uri.parse(baseUrl);
    http.Response response = await http.get(url);
    //Map<String, dynamic> data = jsonDecode(response.body);
    Chickenmeal beef=Chickenmeal.fromJson(jsonDecode(response.body));
    print("Beef Response ${beef.meals?.length}");
    return beef;
  }

  // Future<Meals> callApi() async {
  //   BeefServices service = BeefServices();
  //   Meals meal = (await service.getBeef()) as Meals;
  //   print(meal.strMeal);
  //   return Meals();
  // }

}
