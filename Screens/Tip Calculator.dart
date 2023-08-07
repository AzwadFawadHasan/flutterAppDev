
import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget{
  const TipCalculator({Key? key}) : super(key: key);

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {

  final formKey = GlobalKey<FormState>();
  final totalBillController = TextEditingController();

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
        child: Form (
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Top section
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
                    Text("\$ ${totalBillController.text}", style: TextStyle(fontSize: 26,fontWeight: FontWeight.w700, color: textBlack)),

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

              ),
              //gap
              const SizedBox(
                height: 10,

              ),
              //per person section
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(5),

                ),
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Amount Per Person", style: TextStyle(color: textLightBlack),),
                    Text("\$ 20.00 ", style: TextStyle(fontSize:18, fontWeight:FontWeight.w900, color: textBlack),)


                  ],
                ),
              ),
              const Spacer(),

              const Text("Total bill", style: TextStyle(fontSize:15, fontWeight:FontWeight.w900, color: textBlack),),
              const SizedBox(height: 5,),
              TextFormField(
                controller: totalBillController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Please enter total bill amount",
                  hintStyle:const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: textLightBlack,

                  ),
                  suffixIcon: const Icon(Icons.attach_money, color: textBlack,),
                  filled: true,
                  fillColor: containerColor,

                  border: OutlineInputBorder(
                    borderSide: const  BorderSide(
                      width: 1,
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(5),

                  ),
                  enabledBorder:  OutlineInputBorder(
                    borderSide: const  BorderSide(
                      width: 1,
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(5),

                  ),
                  focusedBorder:  OutlineInputBorder(
                    borderSide: const  BorderSide(
                      width: 1,
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(5),

                  ),


                ),
                onSaved: (value){
                  if(value == null || value.isEmpty){
                    totalBillController.text= "0.00";
                  }
                  totalBillController.text = value.toString();
                  setState(() {

                  });

                },
              ),
            ],
          ),
        ),

      ),

    );
  }
}