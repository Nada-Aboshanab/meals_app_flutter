import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task2/Beefmeals.dart';
import 'package:task2/models/meals_model.dart';

import '../Chickenmeal.dart';
import '../models/category_model.dart';

class ChickenServices {
  Future<Meals> getChicken() async {
    String baseUrl = 'https://www.themealdb.com/api/json/v1/1/filter.php?c=Beef';
    Uri url = Uri.parse('$baseUrl');
    http.Response response = await http.get(url);
    //Map<String, dynamic> data = jsonDecode(response.body);
    Meals beef=Meals.fromJson(jsonDecode(response.body));
    return beef;
  }
  Future<Meals> callApi() async {
    ChickenServices service = ChickenServices();
    Meals meal = (await service.getChicken()) as Meals;
    print(meal.strMeal);
    return Meals();
  }

}
