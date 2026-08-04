import 'package:ecommerce/product,page,cart,checkout/checkout_screen.dart';
import 'package:ecommerce/product,page,cart,checkout/order_placed_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Expanded(
            flex: 8,
            child:  Padding(
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
            SizedBox(height: 15,),
            Container(
              height:56 ,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(8),
      
      
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.discount),
                      SizedBox(width: 8,),
                      Text("Enter Coupon Code"),
                    ],
                  
                  ),
                  Icon(Icons.keyboard_arrow_right_outlined)
                  
                ],
      
              ),
            )
            
          
          ],
        ),
      )),
      
        Expanded(child: Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>CheckoutScreen()));
                },
                child: Container(
                  width: 342,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.indigo
                  ),
                  child: Center(child: Text("Checkout", style: TextStyle(color: Colors.white),)),
                  
                
                ),
              ),
            ),
          ))
          
      
          
          
        ],
      ),
    );
  }
}
