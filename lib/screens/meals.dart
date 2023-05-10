
import 'package:flutter/material.dart';
import 'package:task2/Beefmeals.dart';
import 'package:task2/Beefmeals.dart';
import 'package:task2/Beefmeals.dart';

import '../Beefmeals.dart';
import '../Beefmeals.dart';
import '../Chickenmeal.dart';
import '../common/details.dart';
import '../common/items.dart';
import '../models/meals_model.dart';
import '../services/meals_services.dart';


class Beef extends StatefulWidget {

  final String categoryName;

  const Beef({super.key, required this.categoryName});

  @override
  State<Beef> createState() => _BeefState();
}

class _BeefState extends State<Beef> {
  updateUi() async {
    if (mounted) {
      setState(() {});
    }
  }
@override
  void initState() {
    print("Category Name: ${widget.categoryName}");
    callApi(widget.categoryName);
    super.initState();
  }

  List<Meals> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Menu",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.pinkAccent,
      ),

      body:
      ListView.builder(itemCount: list.length,
          itemBuilder: (context, index) {
            Meals meals = list[index];
            print("Meals:${meals.strMeal}");
            return Items(
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return Details(categoryid:meals.idMeal ?? "",);
              })),
              name:  meals.strMeal  ,
              image: meals.strMealThumb,
            );
      })
      // ListView(
      //   children:[
      //     Items(image:MealData?.getImage()
      //       , name: MealData?.strMeal,
      //       onTap: () => Navigator.push( context ,MaterialPageRoute(builder:( BuildContext context){
      //         return const Details(
      //          // name:"Classic Burger" ,
      //          name: "",
      //           image: '',
      //         );
      //       }))
      //
      //   ),
      //
      //
      //
      //
      //   ]
      // ),


     );
  }
  void callApi(String catName) async{
    BeefServices service = BeefServices();
    var data = await service.getMealsByCategory(catName);
    list.addAll(data.meals!);
    setState(() {});
  }
}
