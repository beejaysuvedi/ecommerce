import 'package:ecommerce/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counterProvider.counterNumber.toString(),
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: ()
                  
                  {
                    counterProvider.increment();
                  },
                  child: const Text("Increment Counter"),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: (){
                    counterProvider.decrement();
                  },
                  child: const Text("Decrement Counter"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// int _counterNumber = 10;

  // void increment() {
  //   setState(() {
  //     _counterNumber++;
  //   });
  // }

  // void decrement() {
  //   setState(() {
  //     _counterNumber--;
  //   });
  // }