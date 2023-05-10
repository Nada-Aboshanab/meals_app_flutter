class CategoryModel {
  String? strCategory;

  CategoryModel({ this.strCategory});

  @override
  String toString() {
    return 'strCategory=$strCategory';
  }

  factory CategoryModel.fromJson(dynamic data) {
    var jsonData = data['categories'][0];

    return CategoryModel(
      strCategory: jsonData['strCategory'],
    );
  }

  String getImage() {
    if (strCategory == "Beef") {
      return 'assets/beef.png';
    } else if (strCategory == "Chicken") {
      return 'assets/chicken.png';
    } else if (strCategory == "Dessert") {
      return 'assets/dessert.png';
    } else if (strCategory == "Lamb") {
      return 'assets/lamb.png';
    } else if (strCategory == "Miscellaneous") {
      return 'assets/miscellaneous.png';
    } else if (strCategory == "Pasta") {
      return 'assets/pasta.png';
    } else if (strCategory == "Pork") {
      return 'assets/pork.png';
    } else if (strCategory == "Seafood") {
      return 'assets/seafood.png';
    } else if (strCategory == "Side") {
      return 'assets/side.png';
    } else if (strCategory == "Breakfast") {
      return 'assets/breakfast.png';
    } else if (strCategory == "Starter") {
      return 'assets/starter.png';
    } else if (strCategory == "Vegan") {
      return 'assets/vegan.png';
    } else if (strCategory == "Vegetarian") {
      return 'assets/vegetarian.png';
    } else if (strCategory == "Goat") {
      return 'assets/goat.png';
    } else {
      return 'assets/cl.jpeg';
    }
  }
}
