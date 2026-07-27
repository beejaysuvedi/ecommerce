import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            SizedBox(height:120 ,),
            Text("Sign In", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),),

            SizedBox(height: 20,),

            
            TextField(

              decoration: InputDecoration(

                filled: true,
                fillColor: Colors.grey.withValues(alpha: 0.15),
                hintText: "Email Address",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15)

                )
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Color(0xff8E6CEF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(child: Text("Continue", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),)),
                    

            ),
            SizedBox(height: 15,),
            RichText(
              
              text:TextSpan(
                text: "Don't have an Account ?",
                children: [
                  TextSpan(
                    text: "Create one", style: TextStyle(fontWeight: FontWeight.w600)
                  )
                ]
              ) ),

              SizedBox(height:50,),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    "Continue with Apple",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  Positioned(
                    left: 20,
                    child: Image.asset("assets/apple.png"),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    "Continue with Google",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  Positioned(
                    left: 20,
                    child: Image.asset("assets/google.png", fit: BoxFit.cover, height:25, width: 25,),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    "Continue with Facebook",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  Positioned(
                    left: 20,
                    child: Image.asset("assets/facebook.png", fit: BoxFit.cover, height:25, width: 25,),
                  ),
                ],
              ),
            ),
            

            

          ],
        ),
      ),
    );
  }
}