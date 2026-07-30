import 'package:ecommerce/home/product_data_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoodieScreen extends StatelessWidget {
  const HoodieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
              SizedBox(height: 10),
              Text(
                "Hoodies (240)",
                style: GoogleFonts.gabarito(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
          
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 6,
                
          
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      
                      height: 310,
                      width: 161,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.withValues(alpha: 0.15),
                              
                      ),
                      child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20),
                                      ),
                                      child: Image.asset(
                                        hoodielist[index]["image"],
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(hoodielist[index]["name"], style:TextStyle(fontSize: 12,) ,),
                                    
                    
                                    Text ("\$${hoodielist[index]['price']}", style: GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        
                      ),
                  );
                  },
                ),
              
            ]
              
        ),
      ),
    ),
    );
  }
}
