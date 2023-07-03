import 'package:flutter/material.dart';
import 'package:on_boarding_and_auth/imageassets.dart';
import 'package:on_boarding_and_auth/view/widgets/custom_botton.dart';

class VerifySuccessScreen extends StatelessWidget {
  const VerifySuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Image.asset(AppImageAsset.verifyImage),
            SizedBox(
              height: h * .0213,
            ),
            const Text(
              'Verified',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: h * .0213,
            ),
            const Text(
              'Your account has been\nverified succesfsully!',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: h * .0412,
            ),
            CustomButton(
              label: 'Done',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
