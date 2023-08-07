
import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget{
  const TipCalculator({Key? key}) : super(key: key);

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tip Calcualtor",
            style: TextStyle(fontSize:10, color: Colors.black87, fontWeight: FontWeight.w700)),
        centerTitle: true,
        elevation: 3,
        shadowColor: Colors.black26,
        backgroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              color: Colors.purple,
              width: double.infinity,
              height: 300,
            )
          ],
        ),

      ),

    );
  }
}