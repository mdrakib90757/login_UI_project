import 'package:flutter/material.dart';
import 'package:new_login_project/Screen/loginscreen.dart';
import 'package:new_login_project/ulits/custom_color.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formState=GlobalKey<FormState>();
  bool ObscureIndex=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: formState,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100,left: 20,right: 20),
          child: Center(
            child: Column(
              children: [
                const Text("Create new account",style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500
                ),),
                const SizedBox(height: 5,),
                Text("Please fill in the from to continue",style: TextStyle(
                    color: Colors.white.withOpacity(.5),
                    fontSize: 15
                ),),
                const SizedBox(height: 60,),
                TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Enter your Full Name";
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
                      hintText: "Full Name",
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
                const SizedBox(height: 20,),
                TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return "";
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
                      hintText: "Email Address",
                      contentPadding: EdgeInsets.all(20),
                      hintStyle: TextStyle(
                          color: Colors.white.withOpacity(.6)
                      ),
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
        
                        });
                      }, icon: Icon(Icons.email_outlined,color: Colors.white.withOpacity(.5),))
                  ),
                  style: TextStyle(
                      color: Colors.white.withOpacity(.7)
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return "";
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
                      hintText: "Phone Number",
                      contentPadding: EdgeInsets.all(20),
                      hintStyle: TextStyle(
                          color: Colors.white.withOpacity(.6)
                      ),
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
        
                        });
                      }, icon: Icon(Icons.call_end_outlined,color: Colors.white.withOpacity(.5),))
                  ),
                  style: TextStyle(
                      color: Colors.white.withOpacity(.7)
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
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
                const SizedBox(height: 50,),
                InkWell(
                  onTap: () {
        
                  },
                  child: Container(
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text("Sign Up",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
        
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an account?",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen(),));
                      },
                      child: Text(" Sing in",style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15
        
                      ),),
                    )
                  ],
                )
        
        
              ],
            ),
          ),
        ),
      ),

    );
  }
}
