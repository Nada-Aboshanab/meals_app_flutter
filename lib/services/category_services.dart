import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Categ.dart';
import '../models/category_model.dart';

class CategoryServices {
  Future<Categ> getCategory() async {
    String baseUrl = 'https://www.themealdb.com/api/json/v1/1/categories.php';
    Uri url = Uri.parse('$baseUrl');
    http.Response response = await http.get(url);
    //Map<String, dynamic> data = jsonDecode(response.body);
    Categ category = Categ.fromJson(jsonDecode(response.body));
    return category;
  }

  Future<Categories> callApi() async {
    CategoryServices service = CategoryServices();
    Categories category = (await service.getCategory()) as Categories;
    print(category.strCategory);
    return Categories();
  }
}


