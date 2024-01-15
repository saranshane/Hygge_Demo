// import 'package:flutter/material.dart';
// import 'dart:ui';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: FirstScreen(),
//     );
//   }
// }

// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(60.0),
//         child: AppBar(
//           leading: IconButton(
//             icon: Icon(Icons.circle_rounded),
//             onPressed: () {},
//           ),
//           title: Text('Tangent'),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.settings),
//               onPressed: () {},
//             ),
//           ],
//         ),
//       ),
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           Container(
//             color: Colors.white,
//           ),
//           BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//             child: Container(
//               color: const Color.fromARGB(255, 241, 139, 228).withOpacity(0.1),
//             ),
//           ),
//           Center(
//             child: Container(
//               margin: EdgeInsets.symmetric(
//                 horizontal: 10,
//               ),
//               child: Stack(
//                 children: [
//                   Card(
//                     elevation: 100,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: ClipRect(
//                       child: BackdropFilter(
//                         filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//                         child: Container(
//                           color: Colors.white.withOpacity(0.1),
//                           child: Image.asset(
//                             'assets/saran.jpg',
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 10,
//                     left: 0,
//                     right: 0,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         // Add your action when the button is pressed
//                       },
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.white,
//                           minimumSize: Size(80, 0)),
//                       child: Text(
//                         '80% Match',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 10,
//                     left: 10,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Preethi',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           'Software Engineer',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 14,
//                           ),
//                         ),
//                         Text(
//                           'Gurugram',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 14,
//                           ),
//                         ),
//                         Text(
//                           '4.5 Rating',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 14,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorites',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications),
//             label: 'Notifications',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//         selectedItemColor: Colors.orange,
//         unselectedItemColor: Color.fromARGB(255, 241, 139, 228),
//         currentIndex: 0,
//         onTap: (index) {},
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class Person {
  final String imagePath;
  final String name;
  final String occupation;
  final String location;
  final String rating;
  final String matchpercent;

  Person({
    required this.imagePath,
    required this.name,
    required this.occupation,
    required this.location,
    required this.rating,
    required this.matchpercent,
  });
}

class FirstScreen extends StatelessWidget {
  final List<Person> people = [
    Person(
        imagePath: 'assets/Aswitha.jpg',
        name: 'Aswitha',
        occupation: 'Software Engineer',
        location: 'Hyderabad',
        rating: '4.5 Rating',
        matchpercent: '70%'),
    Person(
        imagePath: 'assets/saran.jpg',
        name: 'Saran',
        occupation: 'Software Engineer',
        location: 'Jaipur',
        rating: '4.5 Rating',
        matchpercent: '60%'),
    Person(
        imagePath: 'assets/preeti.jpg',
        name: 'Preethi',
        occupation: 'Software Engineer',
        location: 'Gurugram',
        rating: '4.5 Rating',
        matchpercent: '50%'),
    Person(
        imagePath: 'assets/Sanjay.png',
        name: 'Sanjay Kumar',
        occupation: 'Software Engineer ',
        location: 'Hyderabad',
        rating: '5 Rating',
        matchpercent: '80%'),
    Person(
        imagePath: 'assets/Bhanu.png',
        name: 'Bhanu',
        occupation: 'Software Engineer',
        location: 'Hyderabad',
        rating: '5 Rating',
        matchpercent: '90%'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.circle_rounded),
            onPressed: () {},
          ),
          title: Text('Tangent'),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: people.map((person) {
            return CustomCard(
              imagePath: person.imagePath,
              matchpercent: person.matchpercent,
              name: person.name,
              occupation: person.occupation,
              location: person.location,
              rating: person.rating,
              onPressed: () {
                // Add your action when the button is pressed
              },
            );
          }).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Color.fromARGB(255, 241, 139, 228),
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String matchpercent;
  final String name;
  final String occupation;
  final String location;
  final String rating;
  final VoidCallback onPressed;

  CustomCard(
      {required this.imagePath,
      required this.name,
      required this.occupation,
      required this.location,
      required this.rating,
      required this.onPressed,
      required this.matchpercent});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Stack(
        children: [
          Card(
            elevation: 100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  width: 600, // Adjust the width as needed
                  height: 700, // Adjust the height as needed
                  color: Colors.white.withOpacity(0.1),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(250, 0),
              ),
              child: Text(
                matchpercent + "Match",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  occupation,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Text(
                  rating,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
