import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      
        children: [
          Expanded
          (
            flex: 4,
            child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                SizedBox(height: 20,),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    
                  },
                  
                  child: Icon(Icons.arrow_back)),
                Spacer(),
                Text("Checkout",style: GoogleFonts.gabarito(fontSize: 16, fontWeight:FontWeight.w700),),
                Spacer(),
              ],
            ),
            SizedBox(height: 30,),
            Container(
              height: 72,
              width: double.maxFinite,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.grey.withValues(alpha: 0.15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Shipping Address", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
                        Text("Add Shipping Address", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)
                      ],
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_right)
                ],
              ),

            ),
            SizedBox(height: 30,),
            Container(
              height: 72,
              width: double.maxFinite,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.grey.withValues(alpha: 0.15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Payment Method", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
                        Text("Add Payment Method", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)
                      ],
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_right)
                ],
              ),

            ),
             SizedBox(height: 50,),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Subtotal", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,),),
                Text("\$200.00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Shipping cost", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,),),
                Text("\$200.00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Tax", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,),),
                Text("\$200.00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,),),
                Text("\$200.00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),

              ],
            ),
          )),
           Expanded(child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: Center(
            child: Container(
              width: 342,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.indigo
              ),
              child: Center(child: Text("Checkout", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500), )),
              
            
            ),
          ),
        ))
          
          
          
           
          
      
        ],
      ),

    );
  }
}