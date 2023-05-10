import 'package:flutter/material.dart';

import '../detailsapi.dart';
import '../services/details_service.dart';

class Details extends StatefulWidget {
  // const Details({ required this.image,required this.name}) ;
  // final String  name;
  // final String  image;
  // final
  final String categoryid;

  const Details({super.key, required this.categoryid});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  var detail = Meals();
  bool isLoading = true;

  @override
  void initState() {
    print("Category ID: ${widget.categoryid}");
    callApi(widget.categoryid);
    super.initState();
  }

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
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: isLoading ? const Center(
          child: CircularProgressIndicator(),
        ) : ListView(
          children: [
            Center(
                child: Image.network(
              detail.strMealThumb!,
              height: 200,
              width: MediaQuery.of(context).size.width,
            )),
            //   child: CircleAvatar(
            //          b: Image.network(src)
            //          radius: 150,
            //        ),
            // ),

            const SizedBox(
              height: 40,
            ),
            Container(
              color: Colors.black,
              height: 50,
              child: Center(
                child: Text(
                  detail.strMeal!,
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),


                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height,
                  child: Center(
                    child: Text(
                      detail.strInstructions!,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),

                ),


          ],
        ),
      ),
    );
  }

  void callApi(String catid) async {
    DetailServices service = DetailServices();
    var data = await service.getMealsByCategory(catid);
    detail = data.meals![0];
    isLoading=false;
    setState(() {});
  }
}
