import 'package:flutter/material.dart';

import '../Beefmeals.dart';
import '../Chickenmeal.dart';
import '../common/details.dart';
import '../common/items.dart';
import '../models/meals_model.dart';
import '../services/chickenservice.dart';

class Chicken extends StatefulWidget {
  const Chicken({Key? key}) : super(key: key);

  @override
  State<Chicken> createState() => _ChickenState();
}

class _ChickenState extends State<Chicken> {
  updateUi() async {
    if (mounted) {
      setState(() {});
    }
  }
  initState() {
    callApi();
    super.initState();
  }

Meals? chicklData;
  List<Meals> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Menu Types Screen ",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.pinkAccent,
      ),

      body:
      ListView.builder(itemCount: list.length,
          itemBuilder: (context, index) {
            Meals meals = list[index];

            return ListView(
          padding: const EdgeInsets.all(8),

          children: [
            Items(
              onTap: (){
                // Navigator.pushNamed(context, route.beefPage);
              },
              name:    meals?.strMeal,
              image:  meals?.strMealThumb,
            )
          ],
        );
      })
      // ListView(
      //     children:[
      //       Items(image:MealData?.getImage()
      //           , name: MealData?.strMeal,
      //           onTap: () => Navigator.push( context ,MaterialPageRoute(builder:( BuildContext context){
      //             return const Details(
      //               name: "",
      //               image: '',
      //             );
      //           }))
      //
      //       ),
      //
      //
      //
      //     ]
      // ),
    );
  }
  void callApi() async{

    ChickenServices service = ChickenServices();
    var data = await service.getChicken();
     //list.addAll(data.meal!);
    setState(() {});
  }
}
