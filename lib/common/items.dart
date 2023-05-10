import 'dart:developer';

import 'package:flutter/material.dart';



class Items extends StatelessWidget {
  Items({ this.name, this.onTap,this.image}) ;
  String? name;
  Function()? onTap;
  String? image;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap == null ? log('onTap Null') : onTap!();
        //onChange == null ? log("onChange Null.!") : onChange!("Na");
      },
      child: Container(
        color: Colors.white,
        child: Row(
          children: [
            Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.all(8),
                child: Image.network(image!,
                  width: 75, height: 75,)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width - 135,
                child: Text(
                  name!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize:18,
                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
