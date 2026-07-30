import 'package:ecommerce/home/product_data_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/man.png"),
                ),
                Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withValues(alpha: 0.15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Men"), Icon(Icons.arrow_drop_down)],
                    ),
                  ),
                ),

                CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xff8E6CEF),
                  child: Icon(Icons.shopping_bag),
                ),
              ],
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.withValues(alpha: 0.15),

                prefixIcon: Icon(Icons.search, size: 30),
                hintText: "Search",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 45),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Text(
                  "See All",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 90,
              child: ListView.builder(
                itemCount: productdatalist.length,
                scrollDirection: Axis.horizontal,

                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            productdatalist[index]['image'],
                          ),
                        ),
                        Text(productdatalist[index]["name"]),
                      ],
                    ),
                  );
                },
              ),
            ),
            

            
          ],
        ),
      ),
    );
  }
}
