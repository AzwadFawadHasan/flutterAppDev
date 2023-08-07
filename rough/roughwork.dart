// import 'package:flutter/material.dart';
//
// void main() => runApp(MaterialApp(
//
//   home: Home(),
//
// ));
//
//
// class Home extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Task Board'),
//
//         centerTitle: true,
//         backgroundColor: Colors.black,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed:() {print("elevated button pressed");},
//           child: Icon(
//             Icons.email,
//
//           ),
//
//
//           // child: Icon(
//           //   Icons.airport_shuttle,
//           //   color: Colors.blue,
//           //   size: 50.0,
//         ),
//
//
//         //child: Image.asset('assets/ss.jpg'),
//
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           print("bitton was pressed");
//         },
//         child: Icon(
//           Icons.add,
//         ),
//         backgroundColor: Colors.black,
//
//       ),
//     );
//
//   }
//
// }


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
    return 'Unknown'; // Default fallback
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
          String subheading = "Your Personal task management and planning solution for planning your day, week & months\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
              "12:55pm 25th May, 2023"; // Convert number to words

          return Card(
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
                  Text(
                    subheading,
                    style: TextStyle(fontSize: 14.0),
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
