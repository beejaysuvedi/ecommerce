import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notications extends StatelessWidget {
  const Notications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          
          child:
           Padding(
             padding: const EdgeInsets.only(top: 20),
             child: Text(
              "Notifications",
              style: GoogleFonts.gabarito(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
                       ),
           ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/bell.png", height: 100,width: 100,),
              Text("No Notification yet", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
              SizedBox(height: 20,),
              Container(
                height: 52,
                width: 185,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xff8E6CEF)
                ),
                child: Center(child: Text("Explore Categories", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF)),)),
              )
            ],
          ),
        ),
      )
      
    );
  }
}
