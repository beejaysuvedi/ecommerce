import 'package:ecommerce/home/home_screen.dart';
import 'package:ecommerce/home/hoodie_screen.dart';
import 'package:ecommerce/home/product_data_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
                SizedBox(height:10),
              Text("Shop by Categories",style: GoogleFonts.gabarito(fontSize: 24, fontWeight: FontWeight.w700),),
          SizedBox(height: 15,),
          ListView.builder(
            itemCount: productdatalist.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),

            
            
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: InkWell(
                  onTap:() => Navigator.push(context, MaterialPageRoute(builder: (_)=>HoodieScreen())),
                  child: Container(
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.withValues(alpha: 0.15),
                    ),
                    child: Row(
                      children: [
                        Image.asset(productdatalist[index]['image']),
                        SizedBox(width: 15,),
                        Expanded(child: Text(productdatalist[index]["name"]))
                      ],
                    ),
                  ),
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