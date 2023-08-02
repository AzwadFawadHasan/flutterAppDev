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
        //child: Image.asset('assets/ss.jpg'),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("click."),
        backgroundColor: Colors.green[800],
      ),
    );

  }

}