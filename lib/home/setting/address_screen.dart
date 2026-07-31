import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.withValues(alpha:0.15),
                  child:Expanded
                  (
                    flex: 3,
                    child: Icon(Icons.keyboard_arrow_left_outlined)), 
                ),
                SizedBox(width: 150,),
                
                Expanded(
                  flex: 1,
                  child: Text("Address", style: GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w600,),)),
              ],
            ),
            SizedBox(height: 30,),
            Container(
                height: 72,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withValues(alpha: 0.15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("41003, khaula 13, Kushma, Gandaki province .....", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                      Text("Edit", style: GoogleFonts.gabarito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff8E6CEF)),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 72,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withValues(alpha: 0.15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("33700, Bindabasini 2, Pokhara, Gandaki province .....", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                      Text("Edit", style: GoogleFonts.gabarito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff8E6CEF)),)
                    ],
                  ),
                ),
              ),
            
        
          ],
        ),
      ),
    );
  }
}