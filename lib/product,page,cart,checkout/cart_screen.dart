import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(height: 25),
            Row(
              children: [
                Icon(Icons.arrow_back),
                Spacer(),
                Text(
                  "Cart",
                  style: GoogleFonts.gabarito(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 10),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Text(
                "Remove All",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.withValues(alpha: 0.15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                         Image.asset("assets/products/jacketdummy.png", ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Mens Harrington jacket"),
                            Row(
                              children: [
                              RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                    fontSize: 12
                                  ),
                                  children: const [
                                    TextSpan(
                                      text: "size  -"
                                    ),
                                    TextSpan(
                                      text: " M",
                                      style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.w600
                                      )
                                      
                                    )
                                  ]
                        
                              )), 
                              SizedBox(width: 10,),
                              RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                    fontSize: 12
                                  ),
                                  children: const [
                                    TextSpan(
                                      text: "Color -"
                                    ),
                                    TextSpan(
                                      text: " Lemon",
                                      style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.w600
                                      )
                                      
                                    )
                                  ]
                        
                              )),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: AlignmentGeometry.topRight,
                        child: Text("\$148")),

                      Row(
                        children: [
                          Icon(Icons.add_circle, color: Color(0xff8E6CEF),),
                          Icon(Icons.remove_circle, color: Color(0xff8E6CEF),)
                        ],

                      )

                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
