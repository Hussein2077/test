import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:on_boarding_and_auth/controller/bottom_navbar_controller.dart';
import 'package:on_boarding_and_auth/imageassets.dart';

import '../../color.dart';
import 'home_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<Widget> tabs = [
      HomeScreen(),
      Center(child: Text('Category')),
      Center(child: Text('Community')),
      Center(child: Text('Profile')),
    ];
    return GetBuilder<BottomNavBarControllerImplement>(
        init: BottomNavBarControllerImplement(),
        builder: (controller) {
          return Scaffold(
            body: tabs[controller.selectedIndex],
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: BottomNavigationBar(
                backgroundColor: AppColor.backgroundColor,
                elevation: 50,
                type: BottomNavigationBarType.fixed,
                selectedLabelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF455A64),
                    fontSize: 11),
                selectedFontSize: 11,
                unselectedLabelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF455A64),
                    fontSize: 11),
                selectedItemColor: const Color(0xFF455A64),
                selectedIconTheme: const IconThemeData(
                  color: AppColor.primaryColor,
                ),

                currentIndex: controller.selectedIndex,
                onTap: (index) {
                  controller.next(index);
                },

                items: [
                  BottomNavigationBarItem(
                    icon: controller.selectedIndex != 0
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(AppImageAsset.home),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              AppImageAsset.home,
                              color: AppColor.primaryColor,
                            ),
                          ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: controller.selectedIndex != 1
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(AppImageAsset.category),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              AppImageAsset.category,
                              color: AppColor.primaryColor,
                            ),
                          ),
                    label: 'Category',
                  ),
                  BottomNavigationBarItem(
                    icon: controller.selectedIndex != 2
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(AppImageAsset.community),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              AppImageAsset.community,
                              color: AppColor.primaryColor,
                            ),
                          ),
                    label: 'Community',
                  ),
                  BottomNavigationBarItem(
                    icon: controller.selectedIndex != 3
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(AppImageAsset.profile),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              AppImageAsset.profile,
                              color: AppColor.primaryColor,
                            ),
                          ),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          );
        });
  }
}
