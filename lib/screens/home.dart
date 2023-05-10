import 'package:flutter/material.dart';
import 'package:task2/common/category.dart';

import '../Categ.dart';
import '../models/category_model.dart';
import '../services/category_services.dart';
import 'meals.dart';
import 'chicken.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  updateUi() async {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  initState() {
    callApi();
    super.initState();
  }
  String? catname;
  Categories? CategoryData;
  List<Categories> list = [];

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
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {

              Categories categories = list[index];

              return Container(
                  padding: const EdgeInsets.all(8),
                  child: Category(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return  Beef(categoryName: categories.strCategory!,);
              })),
                    text: categories.strCategory,
                    image: categories.strCategoryThumb,
                  ));
            })

        // ListView(
        //   padding: const EdgeInsets.all(8),
        //  // shrinkWrap: true,
        //   //physics: ScrollPhysics(),
        //   children: [
        //     Category(
        //       onTap: (){
        //
        //        Navigator.pushNamed(context, route.beefPage);
        //
        //       },
        //       text:    CategoryData?.strCategory,
        //       image:  CategoryData?.getImage(),
        //     ),
        //
        //     // Category(
        //     //   onTap: (){
        //     //     // Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
        //     //     //   return const Chicken(
        //     //     //   );
        //     //     // }));
        //     //     Navigator.pushNamed(context, route.chickenPage);
        //     //   },
        //     //   text: "Checken Burger",
        //     //   image: 'assets/tasty-chicken-burger-black-background-reflection-lettuce-cheese-cucumber-bacon-fried-onion-mayonnaise-178713335.jpg',
        //     // ),
        //     // Category(
        //     //   onTap: (){
        //     //     // Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
        //     //     //   return const Kids(
        //     //     //   );
        //     //     // }));
        //     //     Navigator.pushNamed(context, route.kidsPage);              },
        //     //   text: "Kids Meal",
        //     //   image: 'assets/download.jpeg',
        //     // ),
        //     // Category(
        //     //   onTap: (){
        //     //     // Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
        //     //     //   return const Additions(
        //     //     //   );
        //     //     // }));
        //     //     Navigator.pushNamed(context, route.addPage);
        //     //   },
        //     //   text: "Additions",
        //     //   image: 'assets/depositphotos_321708962-stock-photo-french-fries-baked-fries-different.jpg',
        //     // ),
        //     //
        //     // Category(
        //     //   onTap: (){
        //     //     // Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
        //     //     //   return const Drinks(
        //     //     //   );
        //     //     // }));
        //     //     Navigator.pushNamed(context, route.drinkPage);
        //     //   },
        //     //   text: "Drinks",
        //     //   image: 'assets/881dfa97168855.5ebeba577327f.jpg',
        //     // ),
        //
        //   ],
        // )
        );
  }

  void callApi() async{

    CategoryServices service = CategoryServices();
    var data = await service.getCategory();
    list.addAll(data.categories!);
    setState(() {});
  }
}
