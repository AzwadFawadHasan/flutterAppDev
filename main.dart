import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Text('This is the title'),
        centerTitle: true,
      ),
      body: Center(
        child: Text("THis is body text"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Text("click"),
      ),
    ),
  ));
}
