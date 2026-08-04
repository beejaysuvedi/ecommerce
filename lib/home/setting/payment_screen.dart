import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back)),
                ),
                Spacer(),
                Text("Payment", style: GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w700)
                
                ,),
                Spacer(),
              ],
        
            ),
            SizedBox(height: 20,),
            Text("Cards",style: GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w700),),
            SizedBox(height: 10,),
            Container(
              height: 72,
              width: double.maxFinite,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.grey.withValues(alpha: 0.15)),
              child: 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                
                    Row(
                      children: [
                        Text("**** 4187", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        Icon(Icons.paypal),
                        
                      ],
                      
                    ),
                    Icon(Icons.keyboard_arrow_right),
                    
                  ],
                
                ),
              ),


            ),
            SizedBox(height: 10,),
            Container(
              height: 72,
              width: double.maxFinite,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.grey.withValues(alpha: 0.15)),
              child: 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                
                    Row(
                      children: [
                        Text("**** 4187", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        Icon(Icons.paypal),
                        
                      ],
                      
                    ),
                    Icon(Icons.keyboard_arrow_right),
                    
                  ],
                
                ),
              ),


            ),
            SizedBox(height: 15,),
            Text("Paypal", style: GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w700),),
            SizedBox(height: 10,),



              Container(
              height: 72,
              width: double.maxFinite,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.grey.withValues(alpha: 0.15)),
              child: 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("cloth@gmail.com"),
              
                    Icon(Icons.keyboard_arrow_right),
                    
                  ],
                
                ),
              ),


            ),


        
          ],
        ),
      ),
    );
  }
}