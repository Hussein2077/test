import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:on_boarding_and_auth/app_routes.dart';
import 'package:on_boarding_and_auth/color.dart';
import 'package:on_boarding_and_auth/imageassets.dart';
import 'package:on_boarding_and_auth/view/widgets/custom_botton.dart';

import '../widgets/custom_text_field.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
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
                'Login to continue',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: h * .0142,
              ),
              Column(
                children: [
                  CustomTextField(
                      hintText: 'Email',
                      obscureText: false,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Image.asset(AppImageAsset.emailImage),
                      )),
                  const SizedBox(
                    height: 18,
                  ),
                  CustomTextField(
                      hintText: 'Password',
                      obscureText: false,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Image.asset(AppImageAsset.passwordImage),
                      )),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.rectangle,
                          color: Color(0xFFD9D9D9),
                        )),
                    const Text(
                      'keep me signes in?',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forget password ? ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * .0177,
              ),
               CustomButton(label: 'Login',onTap: (){

              },),
              SizedBox(
                height: h * .0177,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 96),
                child: Row(
                  children: [
                    const Text(
                      'Don’t have account? ',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.signUp);
                        },
                        child: const Text(
                          'Sign up',
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
            ],
          ),
        ),
      ),
    );
  }
}
