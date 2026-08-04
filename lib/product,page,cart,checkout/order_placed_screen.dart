import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPlacedScreen extends StatelessWidget {
  const OrderPlacedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8E6CEF),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              child: Image.asset("assets/orderplaced.png", width: 320, height: 252,),
            )
          
          ),
          Expanded(
            flex: 2,
            child: ClipRRect(
      
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Container(
                height: 370,
                width: double.maxFinite,
                color: Colors.white,
      
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Text("Order Placed\n Successfully",style: GoogleFonts.gabarito(fontSize: 32, fontWeight: FontWeight.w700),),
                      Text("You will recieve an email confirmation"),
                      SizedBox(height: 50,),
                       Container(
                        height: 52,
                        width: double.maxFinite,
                        decoration: BoxDecoration(color: Color(0xff8E6CEF), borderRadius: BorderRadius.circular(100)),
                        
                        child: Center(child: Text("See Order Details", style: TextStyle(fontSize: 16, fontWeight:FontWeight.w600, color: Colors.white),)),
                      )
                    ],
                  ),
                ),
               
              ),
            ),
          )
      
        ],
      
      ),


  
    );
  }
}