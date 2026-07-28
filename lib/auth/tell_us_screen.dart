import 'package:flutter/material.dart';

class TellUsScreen extends StatelessWidget {
  const TellUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 120),
              Text(
                "Tell us about yourself",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
          
              SizedBox(height: 30),
          
              Text(
                "Who do you shop for ?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff272727),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
                children: [
                  Container(
                    height: 52,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xff8E6CEF),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        "Men",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff272727),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 52,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.grey.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        "Women",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff272727),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Text("How old are you ?", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff272727),
                ),),
                SizedBox(height: 10,),
                  
                  Container(
                    height: 56,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.withValues(alpha: 0.15),
                    ),
                    child: 
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Age Range"),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    )
                    
                    
              
                  ),
                  SizedBox(height: 200,),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 52,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xff8E6CEF),
                        borderRadius: BorderRadius.circular(100),
          
                      ),
                      
                      child:
                      
                       Center(
                        
                        child: Text("Finish", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF)),)),
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
