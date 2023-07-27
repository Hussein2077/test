import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
            padding: EdgeInsets.only(
              top: h * .07,
              left: w * .05,
            ),
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
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AppImageAsset.favIcon)),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AppImageAsset.cart)),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AppImageAsset.notification)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: h * .01,
          ),
          Container(
            decoration: BoxDecoration(
                color: AppColor.boxColor,
                borderRadius: BorderRadius.circular(50)),
            height: h * .04,
            width: w * .84,
            child: TextFormField(
              // textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: 'Search',
                  prefix: const Text('   '),
                  hintStyle: TextStyle(
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w500,
                      fontSize: 11),
                  prefixIconConstraints: const BoxConstraints(
                    maxHeight: 20,
                    maxWidth: 20,
                  ),
                  prefixIcon: SvgPicture.asset(
                    AppImageAsset.searchFav,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          SizedBox(
            height: h * .04,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: w * .84,
              height: h * .15,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(AppImageAsset.rectangle),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(10),
                // color: Colors.red,
              ),
            ),
          ),
          SizedBox(
            height: h * .02,
          ),
          Card(
            elevation: 4,
            child: Container(
              height: h * .19,
              width: w * .41,
              decoration: BoxDecoration(
                color: AppColor.backgroundColor,
                borderRadius: BorderRadius.circular(10),

              ),
              child: Stack(
                children: [
                  Positioned(
                      left: w * .04,
                      top: h * .04,
                      child: Column(
                        children: [
                          Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                                color: const Color(0xBA8A4A43),
                                borderRadius: BorderRadius.circular(70)),
                          ),
                          SizedBox(
                            height: h * .00473,
                          ),
                          Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                                color: const Color(0xE08A4A43),
                                borderRadius: BorderRadius.circular(70)),
                          ),
                          SizedBox(
                            height: h * .00473,
                          ),
                          Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                                color: const Color(0xFCEB996E),
                                borderRadius: BorderRadius.circular(70)),
                          ),
                          SizedBox(
                            height: h * .00473,
                          ),
                          Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                                color: const Color(0x9CEB996E),
                                borderRadius: BorderRadius.circular(70)),
                          ),
                        ],
                      )),
                  Positioned(
                    bottom: h * .064,
                    left: h * .064,
                    height: h * .12,
                    width: w * .19,
                    child: Image.asset(
                      AppImageAsset.details,
                      scale: 2,
                    ),
                  ),
                  Positioned(
                    top: h * .137,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: AppColor.containerColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      height: h * .06,
                      // width: double.infinity,
                      child: const Padding(
                        padding: EdgeInsets.only(top: 7,left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Foundation for ever',style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: AppColor.black
                            ),),
                            Text('Mid brown',style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey
                            ),),
                          ],
                        ),
                      )
                    ),
                  ),
                  Positioned(
                      top: h*.02,
                      left: w*.348,
                      child: const Icon(
                    Icons.favorite_border,size: 18,
                    color: AppColor.primaryColor,
                  )),
                  Positioned(
                      top: h*.16,
                      left: w*.27,
                      child: const Text(
                        '3.99 \$',style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                      ),
                      )),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
