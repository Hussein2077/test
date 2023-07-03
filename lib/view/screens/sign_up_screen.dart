import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:on_boarding_and_auth/color.dart';
import 'package:on_boarding_and_auth/view/widgets/custom_botton.dart';
import 'package:on_boarding_and_auth/view/widgets/custom_text_field.dart';

import '../../app_routes.dart';
import '../../imageassets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(children: [
            SizedBox(
              height: h * .13,
            ),
            Image.asset(AppImageAsset.sumerImage),
            SizedBox(
              height: h * .016,
            ),
            const Text(
              'your beauty is priceless',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: h * .0627,
            ),
            const Text(
              'Signup Now!',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: h * .0142,
            ),
            CustomTextField(
              hintText: 'Name',
              obscureText: false,
              prefixIcon: Image.asset(AppImageAsset.nameImage),
            ),
            SizedBox(
              height: h * .029,
            ),
            CustomTextField(
              hintText: 'Phone Number',
              obscureText: false,
              prefixIcon: Image.asset(AppImageAsset.phoneImage),
            ),
            SizedBox(
              height: h * .029,
            ),
            CustomTextField(
              hintText: 'E-mail',
              obscureText: false,
              prefixIcon: Image.asset(AppImageAsset.emailImage),
            ),
            SizedBox(
              height: h * .029,
            ),
            CustomTextField(
              hintText: 'Password',
              obscureText: false,
              prefixIcon: Image.asset(AppImageAsset.passwordImage),
            ),
            SizedBox(
              height: h * .029,
            ),
            CustomTextField(
              hintText: 'Confirm Password',
              obscureText: false,
              prefixIcon: Image.asset(AppImageAsset.passwordImage),
            ),
            SizedBox(
              height: h * .027,
            ),
            Padding(
              padding: EdgeInsets.only(right: w * .54),
              child: const Text('You are'),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.circle_outlined,
                      color: AppColor.primaryColor,
                    )),
                const   Text('consultant',style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.circle_outlined,
                      color: AppColor.primaryColor,
                    )),
                const Text('consultant',style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),),IconButton(
                    onPressed: () {},
                    icon:const Icon(
                      Icons.circle_outlined,
                      color: AppColor.primaryColor,
                    )),
                const    Text('consultant',style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),),

              ],
            ),
            SizedBox(height: h*.0485,),
             CustomButton(label: 'Sign up',onTap: (){
              Get.toNamed(AppRoutes.verifyCode);
            },),
            Padding(
              padding: const EdgeInsets.only(left: 96),
              child: Row(
                children: [
                  const Text(
                    'already have account? ',
                    style:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.login);
                      },
                      child: const Text(
                        'Sign in',
                        style: TextStyle(color: AppColor.primaryColor),
                      ))
                ],
              ),
            ),
            SizedBox(height: h*.054,),
            const Text('or with',style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 12
            ),),
            SizedBox(height:h*.023 ,),
            Padding(
              padding:  EdgeInsets.only(left: w*.34),
              child: Row(

                children: [
                  Image.asset(AppImageAsset.googleImage),
                  Image.asset(AppImageAsset.facebookImage),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
