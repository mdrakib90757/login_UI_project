import 'package:flutter/material.dart';
import 'package:new_login_project/Screen/home_screen.dart';
import 'package:new_login_project/Screen/register_screen.dart';

import 'package:new_login_project/ulits/custom_color.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

  final formstate=GlobalKey<FormState>();

 bool ObscureIndex=false;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Form(
        key: formstate,
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100,left: 20,right: 20),
              child: Column(
                children: [
                  const Text("Welcome Back!",style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500
                  ),),
                  Text("Please sing in to your account",style: TextStyle(
                      color: Colors.white.withOpacity(.5),
                      fontSize: 14
                  ),),
                  SizedBox(height: 60,),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Enter your Username";
                      }else{
                       return null;
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none
                      ),
                      filled: true,
                      fillColor:Color(0xFF2B2E37),
                      hintText: "Username",
                        contentPadding: EdgeInsets.all(20),
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(.6)
                      ),
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
              
                        });
                      }, icon: Icon(Icons.account_circle_outlined,color: Colors.white.withOpacity(.5),))
                    ),
                    style: TextStyle(
                        color: Colors.white.withOpacity(.7)
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Enter your Password";
                      }else{
                        return null;
                      }
                    },
                    style: TextStyle(
                      color: Colors.white.withOpacity(.7)
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
              
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none
                        ),
                        filled: true,
                        fillColor:Color(0xFF2B2E37),
                        hintText: "Password",
                        contentPadding: EdgeInsets.all(20),
                        hintStyle: TextStyle(
                            color: Colors.white.withOpacity(.6)
                        ),
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            ObscureIndex=!ObscureIndex;
                          });
                        }, icon:Icon(ObscureIndex? Icons.visibility_off_outlined:
                        Icons.visibility_outlined,color: Colors.white.withOpacity(.5),))
                    ),
                    obscureText: ObscureIndex,
              
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
              
                        },
                        child: Text("Forgot Password?",style: TextStyle(
                          color: Colors.white.withOpacity(.5),
                          fontWeight: FontWeight.w500
                        ),),)
                    ],
                  ),
                 SizedBox(height: 60,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                        minimumSize: Size(double.infinity, 80),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                  ),
                      onPressed: () {
                        setState(() {
                         if( formstate.currentState!.validate()){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                         }
                        });
        
                  }, child: Text("Log in",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),)
                  ),
                  SizedBox(height: 15,),
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/image/google logo.png",height: 50,width: 50,),
                    SizedBox(width: 5,),
                    Text("Sing in with Google",style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700
                    ),)
                  ],
                )
              ),
                  SizedBox(height: 30,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don`t save an account?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                      ),),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
                        },
                        child: Text(" Sign Up",style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600
                        ),),
                      ),
        
                    ],
                  )
        
              
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
