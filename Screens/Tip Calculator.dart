
import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget{
  const TipCalculator({Key? key}) : super(key: key);

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {

  static const Color containerColor = Color(0xff5F8FB);
  static const Color textBlack = Color(0xff232323);
  static const Color textLightBlack = Color(0xff717171);
  static const Color clearButtonColor = Color(0xffFF7511);


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
              //color: Colors.purple,
              width: double.infinity,
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(5),

              ),
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Text("Total BIll", style: TextStyle(color: textLightBlack),),
                  Text("\$ 0.00", style: TextStyle(fontSize: 26,fontWeight: FontWeight.w700, color: textBlack)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,//to control vertical alignment
                    children: [
                      Text("Total Persons", style: TextStyle(color: textLightBlack),),
                      Text("Tip Amount", style: TextStyle(color: textLightBlack),)
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,//to control vertical alignment
                    children: [
                      Text("05", style: TextStyle(fontSize:14, fontWeight:FontWeight.w700, color: textBlack),),
                      Text("\$ 20.00 ", style: TextStyle(fontSize:14, fontWeight:FontWeight.w700, color: textBlack),)
                    ],
                  )
                ],
              ),

            )
          ],
        ),

      ),

    );
  }
}