import 'package:ecommerce/auth/auth_screen.dart';
import 'package:flutter/material.dart';

class EmailResetScreen extends StatelessWidget {
  const EmailResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        
        child: Column(
          
          children: [
            SizedBox(height: 200,),
            Image.asset("assets/gmail.png", fit: BoxFit.cover,
            height: 250,
            width: 250,
            ),
            SizedBox(height: 20,),
        
            Text("We Sent you an Email to reset your password.", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
             SizedBox(height: 40,),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> AuthScreen()));
                },
                child: Container(
                  height: 60,
                  width:280,
                  decoration: BoxDecoration(
                    color: Color(0xff8E6CEF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("Return to login", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),)),
                        
                          
                ),
              ),
          
          
          ],
        ),
      ),
      

    );
  }
}