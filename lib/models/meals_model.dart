class MealModel{
  String? strMeal;

  MealModel({ this.strMeal});

  @override
  String toString() {
    return 'strCategory=$strMeal';
  }

  factory MealModel.fromJson(dynamic data) {
    var jsonData = data['meals'][0];

    return MealModel(
      strMeal: jsonData['strMeal'],
    );
  }

  String getImage() {
    if (strMeal == "Beef") {
      return 'assets/beef.png';
    } else if (strMeal == "Chicken") {
      return 'assets/chicken.png';
    } else if (strMeal == "Dessert") {
      return 'assets/dessert.png';
    } else if (strMeal == "Lamb") {
      return 'assets/lamb.png';
    } else if (strMeal == "Miscellaneous") {
      return 'assets/miscellaneous.png';
    } else if (strMeal == "Pasta") {
      return 'assets/pasta.png';
    } else if (strMeal == "Pork") {
      return 'assets/pork.png';
    } else if (strMeal == "Seafood") {
      return 'assets/seafood.png';
    } else if (strMeal == "Side") {
      return 'assets/side.png';
    } else if (strMeal == "Breakfast") {
      return 'assets/breakfast.png';
    } else if (strMeal == "Starter") {
      return 'assets/starter.png';
    } else if (strMeal == "Vegan") {
      return 'assets/vegan.png';
    } else if (strMeal == "Vegetarian") {
      return 'assets/vegetarian.png';
    } else if (strMeal == "Goat") {
      return 'assets/goat.png';
    } else {
      return 'assets/cl.jpeg';
    }
  }
}
