import 'package:ecommerce/home/product_data_list.dart';
import 'package:ecommerce/product,page,cart,checkout/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductRatingScreen extends StatelessWidget {
  const ProductRatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Expanded(
            flex: 9,
            child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            
            
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey.withValues(alpha: 0.15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, color: Colors.black,)),
                  ),
                   CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey.withValues(alpha: 0.15),
                    child: Icon(Icons.favorite_border, color: Colors.black,),
                  ),
                
                 
                ],
              ),
                SizedBox(height: 15),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: jacketlist.length,
                    scrollDirection: Axis.horizontal,
                    
          
          
          
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                             
                              
                              decoration: BoxDecoration(
                                color: Colors.grey.withValues(alpha: 0.15),
                              ),
                              child: Image.asset(jacketlist[index]['image'], fit: BoxFit.cover,)
                              
          
                            ),
                            
                          ],
                        ),
                      );
                    },
                  ),
          
                ),
                Text("Men's Harrington Jacket", style: GoogleFonts.gabarito(fontSize: 16,fontWeight: FontWeight.w600, color: Color(0xff272727)),),
                Text("\$148", style: GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff8E6CEF)),),
                SizedBox(height: 30,),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(context: context, builder: (context){
                      return SizedBox(
                        height: 400,
                        child:          Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: SingleChildScrollView(
                            child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(),
                                    Text("Color", style: GoogleFonts.gabarito(fontSize: 24, fontWeight: FontWeight.w700),),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(Icons.cancel)),
                                  ],

                                                        
                                ),
                                
                              ),
                              SizedBox(height: 15,),
                              Container(
                                height: 56,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.withValues(alpha: 0.15),
                            
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: .0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Orange"),
                                      Row(
                                        
                                        children: [
                                          Icon(Icons.circle, color: Colors.orange,),
                                           SizedBox(width: 10,),
                                          Icon(Icons.check),
                                         
                                          
                                        ],
                                      ),
                                                            
                                    ],
                                  ),
                                ),
                                
                            
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 56,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.withValues(alpha: 0.15),
                            
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: .0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Black"),
                                      Icon(Icons.circle, color: Colors.black,),
                                       
                                                            
                                    ],
                                  ),
                                ),
                            
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 56,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.withValues(alpha: 0.15),
                            
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: .0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Red"),
                                      Icon(Icons.circle, color: Colors.red,),
                                       
                                                            
                                    ],
                                  ),
                                ),
                            
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 56,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.withValues(alpha: 0.15),
                            
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: .0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Yellow"),
                                      Icon(Icons.circle, color: Colors.yellow,),
                                       
                                                            
                                    ],
                                  ),
                                ),
                            
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 56,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.withValues(alpha: 0.15),
                            
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: .0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Blue"),
                                      Icon(Icons.circle, color: Colors.blue,),
                                       
                                                            
                                    ],
                                  ),
                                ),
                            
                              ),
                            ],
                                                  ),
                          ),
                        ) ,
                      );
            
                    },);
                  },
                  child: Container(
                    height: 56,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.grey.withValues(alpha: 0.15),
                            
                            
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Color"),
                       Row(
                        children: [
                            Icon(Icons.circle, color: Colors.black,),
                             SizedBox(width:8,),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                       )
                      
                      
                        ],
                      ),
                    ),
                    
                  ),
                ), 
                SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                  showModalBottomSheet(context: context, builder: (context){
                    return SizedBox(
                      height: 800,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(),
                                    Text("Size", style: GoogleFonts.gabarito(fontSize: 24, fontWeight: FontWeight.w700),),
                                    Icon(Icons.cancel),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 56,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.withValues(alpha: 0.15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("S"),
                                      Icon(Icons.check,),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 56,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.withValues(alpha: 0.15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("M"),
                                      Icon(Icons.check,),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 56,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.withValues(alpha: 0.15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("L"),
                                      Icon(Icons.check,),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 56,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.withValues(alpha: 0.15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("XL"),
                                      Icon(Icons.check,),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 56,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.withValues(alpha: 0.15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("2XL"),
                                      Icon(Icons.check,),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          
                          ),
                        ),
                      ),



                    );
                  });
                  },


                  child: Container(
                    height: 56,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.grey.withValues(alpha: 0.15),
                      
                            
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Size"),
                       Row(
                        children: [
                             Text("S"),
                             SizedBox(width: 8,),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                       ),
                        ],
                      ),
                       ),
                    
                    
                  ),
                ),
                 SizedBox(height: 10,),
                Container(
                  height: 56,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.grey.withValues(alpha: 0.15),
                    
          
                  ),
                   child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("size"),
                     Row(
                      children: [
                        Icon(Icons.add_circle, color: Color(0xff8E6CEF),),
                        SizedBox(width: 8,),
                        Text("1"),
                          
                           SizedBox(width: 8,),

                          
                        Icon(Icons.remove_circle,color: Color(0xff8E6CEF), ),
                      ],
                     ),
                      ],
                    ),
                     ),
                  
                  
                ),
                Text("Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),

                Text("Shipping & Returns", style: GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w700),),
                
                Text("Free standard shipping and free 60-day returns", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
                SizedBox(height: 15,),
                Text("Reviews",  style: GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w700),),
                Text("4.5 Ratings",  style: GoogleFonts.gabarito(fontSize: 24, fontWeight: FontWeight.w700),),
                Text("213 Reviews", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/kalomanxe.png",),



                    ),
                    SizedBox(width: 7,),
                    Text("Kaluwa"),
                   
                      ],
                    ),
                    Row(
                      children: [
                        
                        Icon(Icons.star, color:Color(0xff8E6CEF),),
                        SizedBox(width: 5,),
                        Icon(Icons.star, color:Color(0xff8E6CEF),),
                        SizedBox(width: 5,),
                        Icon(Icons.star, color:Color(0xff8E6CEF),),
                        SizedBox(width: 5,),
                       
                        
                      ],

                    )
                  ],
                ),
                Text("Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                SizedBox(height: 5,),
                Text("12 days ago", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),

                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/goromanxe.png",),



                    ),
                    SizedBox(width: 7,),
                    Text("Alex Morgan"),
                   
                      ],
                    ),
                    Row(
                      children: [
                        
                        Icon(Icons.star, color:Color(0xff8E6CEF),),
                        SizedBox(width: 5,),
                        Icon(Icons.star, color:Color(0xff8E6CEF),),
                        SizedBox(width: 5,),
                        Icon(Icons.star, color:Color(0xff8E6CEF),),
                        SizedBox(width: 5,),
                       
                        
                      ],

                    )
                  ],
                ),
                Text("Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                SizedBox(height: 5,),
                Text("12 days ago", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
                SizedBox(height: 50,),


                

          
          
            ],
          ),
        ),
      ), ),
          Expanded(child: Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>CartScreen()));
                },
                child: Container(
                  width: 342,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.indigo
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$148", style: TextStyle(color: Colors.white),),
                        Text("Add to Bag", style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  
                
                ),
              ),
            ),
          ))



        ],
      )
    );
  }
}