import 'dart:developer';

import 'package:flutter/material.dart';

@override

class Category extends StatelessWidget {
  Category ({this.text, this.onTap, this.image}) ;
  String ?text;
  Function() ?onTap;
  String? image;
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        onTap == null ? log('onTap Null') : onTap!();
      },
      child: Container(
        height: 270,
        child: Scaffold(
          body:Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.network(image!),
                    ),

                    Container(
                       alignment: Alignment.center,
                        margin:const EdgeInsets.all( 100),
                        child: Text(
                          text!,
                          style: const TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        )
                    )

                  ],

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
