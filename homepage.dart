import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: Home(),

));


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Board'),

        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed:() {print("elevated button pressed");},
          child: Icon(
              Icons.add_circle
          ),

          // child: Icon(
          //   Icons.airport_shuttle,
          //   color: Colors.blue,
          //   size: 50.0,
        ),


        //child: Image.asset('assets/ss.jpg'),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("bitton was pressed");
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.black,

      ),
    );

  }

}