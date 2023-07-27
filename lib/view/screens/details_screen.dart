import 'package:flutter/material.dart';
import 'package:on_boarding_and_auth/imageassets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 38),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: const Color(0xBA8A4A43),
                            borderRadius: BorderRadius.circular(70)),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: const Color(0xE08A4A43),
                            borderRadius: BorderRadius.circular(70)),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: const Color(0xFCEB996E),
                            borderRadius: BorderRadius.circular(70)),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: const Color(0x9CEB996E),
                            borderRadius: BorderRadius.circular(70)),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: const Color(0x5EFDA55B),
                            borderRadius: BorderRadius.circular(70)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [


                      Image.asset(AppImageAsset.details),
                      const SizedBox(
                        height: 9,
                      ),
                      const AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 4,
                        effect: WormEffect(
                          dotHeight: 9,
                          dotWidth: 10,
                          dotColor: Color(0x40000000),
                          activeDotColor: Color(0x3DB56760),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(AppImageAsset.fav)),
                        const SizedBox(
                          height: 21,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(AppImageAsset.threeD)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'foundation Makeup forever',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'face and body',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.grey.shade400),
                        ),
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade800,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade800,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade800,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade800,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade800,
                            ),
                          ],
                        )
                      ],
                    ),
                    const Text(
                      '20 \$',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                    ),
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
