import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  String numberToWords(int number) {
    if (number == 1) {
      return 'One';
    } else if (number == 2) {
      return 'Two';
    } else if (number == 3) {
      return 'Three';
    }
    // Add more cases for other numbers if needed
    return 'Unknown'; // Default fallback for any other number
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Board', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, position) {
          String heading = "Heading ${numberToWords(position + 1)}"; // Convert number to words
          String subheading = "Your Personal task management and planning solution for planning your day, week & months";

          String date = "12:55pm 25th May, 2023"; // Replace this with your date value

          return Card(

            color: Color.fromRGBO(245, 248, 251, 1.0),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          subheading,
                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(height: 5),
                        Text(
                          date,
                          style: TextStyle(fontSize: 14.0, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("button was pressed");
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
