import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_login_project/ulits/custom_color.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    final Size=MediaQuery.of(context);
    return Container(
      height: 70.0,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text("Get Started",style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500
        ),),
      ),

    );
  }
}
