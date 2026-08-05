import 'package:ecommerce/home/product_data_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 12,
                    child: InkWell
                    (onTap: () {
                      Navigator.pop(context);
                    },
                      child: Icon(Icons.arrow_back)),
                  ),
                  Spacer(),
                  Text("My Favourites (12)",style: GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w700),),
                  Spacer(),
                ],
              ),
              SizedBox(height: 30,),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                childAspectRatio: 0.6,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10, ), 
                      itemCount: 4,
                itemBuilder: (context, index){
                  return 
                  Container(
                    height: 281,
                    width: 161,
                    decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(8)), color: Colors.grey.withValues(alpha: 0.15)),
          
          
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(8),
                                        ),
                                        child: Image.asset(
                                          favouritelist[index]["image"],
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        right: 10,
                                        child: Icon(Icons.favorite_outline),
                                      ),
                                    ],
                                  ),
                                ),
                                  Expanded(
                                    
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Column(
                                      
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(favouritelist[index]["name"], style:TextStyle(fontSize: 12,) ,),
                                        
                                                        
                                        Text ("\$${favouritelist[index]['price']}", style: GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                     ),
                  );
          
                })
            ],
          ),
        ),
      ),
    );
  }
}