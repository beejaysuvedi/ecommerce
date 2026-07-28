import 'package:ecommerce/auth/email_reset_screen.dart';
import 'package:ecommerce/auth/signin_screen.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: SingleChildScrollView(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              SizedBox(height: 90,),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: InkWell
                (
                   onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> SigninScreen()));
                },
                  child: Icon(Icons.arrow_back_ios)),
              ),
              SizedBox(height:30 ,),
              Text("Forgot Password", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),),
          
              SizedBox(height: 20,),
          
              
              TextField(
          
                decoration: InputDecoration(
          
                  filled: true,
                  fillColor: Colors.grey.withValues(alpha: 0.15),
                  hintText: "Enter Email address",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)
          
                  )
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                 onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> EmailResetScreen()));
                },
                child: Container(
                  height: 60,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Color(0xff8E6CEF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("Continue", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),)),
                        
                          
                ),
              ),
              SizedBox(height: 15,),
             
          
                
              
          
              
          
            ],
          ),
        ),
      ),


    );
  }
}