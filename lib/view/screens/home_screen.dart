import 'package:flutter/material.dart';
import 'package:on_boarding_and_auth/color.dart';
import 'package:on_boarding_and_auth/imageassets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: h*.07,left: w*.05,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    size: 35,
                  ),
                  onPressed: () {},
                ),
                // SizedBox(
                //   width: w*.49,
                // ),
                Center(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border,size: 30,)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_cart_rounded,size: 30,)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_none_sharp,size: 30,)),

                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: h*.01,
          ),

          Container(
            color: AppColor.boxColor,
            height: 35,
            width: 329,
            child: TextFormField(

              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
