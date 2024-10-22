// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'homescreen.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             "Instagram",
//             style: TextStyle(
//               fontFamily: 'InstagramFonts', // Use the custom font
//               fontSize: 30,
//             ),
//           ),
//           actions: [
//             Icon(Icons.favorite_border_outlined),
//             SizedBox(
//               width: 10,
//             ),
//             IconButton(
//               icon: SvgPicture.asset(
//                 "assets/messenger.svg",
//                 height: 25.0, // Adjust size
//                 width: 25.0,
//               ),
//               onPressed: () {
//                 // Define action here
//               },
//             ),
//             SizedBox(
//               width: 10,
//             )
//           ],
//         ),
//         body: homePage(),
//         bottomNavigationBar: Container(
//           height: 60, // Set desired height
//           child: Row(
//             mainAxisAlignment:
//                 MainAxisAlignment.spaceAround, // Space items evenly
//             children: [
//               IconButton(
//                 icon: SvgPicture.asset(
//                   "assets/home_outline.svg",
//                   width: 28,
//                 ),
//                 onPressed: () {
//                   // Define action here
//                 },
//               ),
//               IconButton(
//                 icon: Icon(Icons.search, size: 32.0),
//                 onPressed: () {
//                   // Define action here
//                 },
//               ),
//               IconButton(
//                 icon: Icon(Icons.add_box_outlined, size: 32.0),
//                 onPressed: () {
//                   // Define action here
//                 },
//               ),
//               IconButton(
//                 icon: SvgPicture.asset(
//                   "assets/instareel.svg",
//                   width: 25,
//                 ),
//                 onPressed: () {
//                   // Define action here
//                 },
//               ),
//               IconButton(
//                 icon: Icon(Icons.person_2_outlined, size: 28.0),
//                 onPressed: () {
//                   // Define action here
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'postScreen.dart';
import 'profileScreen.dart';
import 'package:insta/reelsScreen.dart';
import 'homescreen.dart'; // Import your HomePage
import 'searchbar.dart'; // Import your SearchPage

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0; // To manage the current page

  final List<Widget> _pages = [
    homePage(), // HomePage widget
    SearchBarscreen(),
    PostScreen(),
    ReelScreen(),
    ProfileScreen(), // SearchPage widget
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _currentIndex == 0
            ? AppBar(
                title: const Text(
                  "Instagram",
                  style: TextStyle(
                    fontFamily: 'InstagramFonts',
                    fontSize: 30,
                  ),
                ),
                actions: [
                  Icon(Icons.favorite_border_outlined),
                  const SizedBox(width: 10),
                  IconButton(
                    icon: SvgPicture.asset(
                      "assets/messenger.svg",
                      height: 25.0,
                      width: 25.0,
                    ),
                    onPressed: () {
                      // Define action here
                    },
                  ),
                  const SizedBox(width: 10),
                ],
                backgroundColor: Colors.white,
              )
            : _currentIndex == 4
                ? AppBar(
                    backgroundColor: Colors.white,
                    title: const Text(
                      "pratham_esh_04",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    actions: [
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "assets/threads-icon.svg",
                            width: 20,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "assets/add-box-svgrepo-com.svg",
                            width: 25,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "assets/three-horizontal-lines-icon.svg",
                            width: 25,
                          ))
                    ],
                  )
                : null,
        body: _pages[_currentIndex], // Display the current page
        bottomNavigationBar: Container(
          color: Colors.white,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/home_outline.svg",
                  width: 28,
                ),
                onPressed: () {
                  setState(() {
                    _currentIndex = 0; // Navigate to HomePage
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.search, size: 32.0),
                onPressed: () {
                  setState(() {
                    _currentIndex = 1; // Navigate to SearchPage
                  });
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/add-box-svgrepo-com.svg",
                  width: 30,
                ),
                onPressed: () {
                  setState(() {
                    _currentIndex = 2; // Navigate to SearchPage
                  });
                  // Define action here
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/instareel.svg",
                  width: 25,
                ),
                onPressed: () {
                  setState(() {
                    _currentIndex = 3; // Navigate to SearchPage
                  });
                  // Define action here
                },
              ),
              // IconButton(
              //   icon: Icon(Icons.person_2_outlined, size: 28.0),
              //   onPressed: () {
              //     // Define action here
              //   },
              // ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 4; // Navigate to SearchPage
                  });
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    "assets/img2.png",
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
