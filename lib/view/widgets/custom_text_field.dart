import 'package:flutter/material.dart';
import 'package:on_boarding_and_auth/color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.controller,
    required this.hintText,
    required this.obscureText,
    required this.prefixIcon,
    this.onChanged,
    this.validator,
  }) : super(key: key);
  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;
  final Widget prefixIcon;
  final Function()? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Colors.grey.withOpacity(.3),
      elevation: 10,
      child: SizedBox(
        
        height: 43,
        width: 314,
        child: TextFormField(
            validator: validator,
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(

enabledBorder: OutlineInputBorder(
  borderSide: const BorderSide(
      color: Colors.white,
      width: .15
  ),
  borderRadius: BorderRadius.circular(16),
),
focusedBorder: OutlineInputBorder(
  borderSide: const BorderSide(
      color: Colors.white,
      width: .15
  ),
  borderRadius: BorderRadius.circular(16),
),

              hintText: hintText,
              hintTextDirection: TextDirection.ltr,

              hintStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.grey),
              contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: .15
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              prefixIcon: prefixIcon,
            )),
      ),
    );
  }
}
