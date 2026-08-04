import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
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
                Text("Wishlist", style: GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w700),),
                Spacer(),
              ],
            ),
            SizedBox(height: 30,),
            Container(
              height: 72,
              width: .maxFinite,
             decoration: BoxDecoration( color: Colors.grey.withValues(alpha: 0.15),borderRadius: BorderRadius.circular(8)),
             child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    
                    children: [
                      Icon(Icons.favorite_border),
                      SizedBox(width: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                            Text("My Favorite", style: GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w700),),
                            Text("12 Products", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
                Icon(Icons.keyboard_arrow_right),
              ],
             ) ,
            ),
              SizedBox(height: 10,),
            Container(
              height: 72,
              width: .maxFinite,
             decoration: BoxDecoration( color: Colors.grey.withValues(alpha: 0.15),borderRadius: BorderRadius.circular(8)),
             child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    
                    children: [
                      Icon(Icons.favorite_border),
                      SizedBox(width: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                            Text("T-Shirts", style: GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w700),),
                            Text("4 Products", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
                Icon(Icons.keyboard_arrow_right),
              ],
             ) ,
            )
          ],
        ),
      ),
    );
  }
}