//route names
import 'package:flutter/material.dart';
import 'package:task2/common/details.dart';
import 'package:task2/screens/meals.dart';
import 'package:task2/screens/chicken.dart';
import 'package:task2/screens/home.dart';

const String homePage='home';
const String beefPage='Beef';
const String chickenPage='Chicken';
const String kidsPage='Kids';
const String addPage='Additions';
const String drinkPage='Drinks';
const String detailPage='Details';


Route<dynamic> controller(RouteSettings settings){
  switch (settings.name){
    case homePage:return MaterialPageRoute(builder: (context)=> const Home());
    case beefPage:return MaterialPageRoute(builder: (context)=>  Beef(categoryName: "",));
     case chickenPage:return MaterialPageRoute(builder: (context)=>const Chicken());

    default:
      throw('Error:this route not define');
  }

}



