import 'package:flutter/material.dart';
import 'package:new_login_project/Screen/loginscreen.dart';
import 'package:new_login_project/Widgets/custom_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            //color: Colors.black,
            child: Image.asset("assets/image/PICTURE.png",
            height: height,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height/3,
              width: double.infinity,
              decoration: BoxDecoration(

                ),
              child: Column(

                children: [
                  Text("abda",style: TextStyle(
                    color: Colors.white,
                    fontSize: 40
                  ),),
                  SizedBox(height: 20.0,),
                  Text("Watch your favorite movies or series on\n"
                      "only one platfrom,you can watch it\nanytime and anywhere",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),),
                  SizedBox(height: 30,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => Loginscreen(),),);
                    },
                      child: CustomButton())
                ],
              ),
              ),
            ),




        ],
      ),
    );
  }
}
