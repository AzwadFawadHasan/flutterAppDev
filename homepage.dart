import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100,
            width: 100,

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to",

                  ),
                  SizedBox(height: 0), // Adding some space between the texts
                  Text(
                    "Plan IT",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Personal task management\n             and planning solution",

                  ),
                  SizedBox(height: 5), // Adding some space between the

                  ElevatedButton(
                    onPressed: () {
                      // Add your button logic here
                      print("Button pressed");
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(56, 56, 56, 1.0)),
                        minimumSize: MaterialStateProperty.all<Size>(Size(201, 33))

                    ),
                    child: Text("Let's Get Started"),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
