import 'package:ecommerce/home/setting/address_screen.dart';
import 'package:ecommerce/home/setting/payment_screen.dart';
import 'package:ecommerce/home/setting/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalDetailsScreen extends StatelessWidget {
  const PersonalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Center(
                child: CircleAvatar(
                 radius: 40,
                 backgroundImage: AssetImage("assets/man.png"),
                ),
                
              ),
              SizedBox(height: 15,),
              Container(
                height: 96,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.grey.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(8),
          
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Beejay Suvedi", style: GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w600,),),
                            Text("beejaysuvedi@gmail.com", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                            Text("+977 9745522457", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                  
                      Text("edit", style: GoogleFonts.gabarito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff8E6CEF)),)
                    ],
                  ),
                ),
          
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddressScreen()));
                },
                child: Container(
                  height: 60,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.withValues(alpha: 0.15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Address", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
                Container(
                height: 60,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withValues(alpha: 0.15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Wishlist", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>WishlistScreen()));
                        },
                        
                        child: Icon(Icons.keyboard_arrow_right)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>PaymentScreen()));
                  },
                  child: Container(
                  height: 60,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.withValues(alpha: 0.15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Payment", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ),
                                ),
                ),
              SizedBox(height: 10,),
                Container(
                height: 60,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withValues(alpha: 0.15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Help", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
                Container(
                height: 60,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withValues(alpha: 0.15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Support", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Text("Sign Out", style: GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xffFA3636)),)
            ],
          ),
        ),
      ),
    );
  }
}