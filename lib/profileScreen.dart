import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta/postgrillreel/myreelpost.dart';
import 'package:insta/postgrillreel/post.dart';
import 'package:insta/postgrillreel/tagmy.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Keep track of the selected index (0 = Posts, 1 = Reels)
  int selectedIndex = 0;

  // Function to change the selected view
  void _onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.white,
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Container(
                width: 150,
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 15),
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80)),
                        height: 90,
                        width: 90,
                        child: Image.asset(
                          "assets/img2.png",
                          fit: BoxFit.cover,
                        )),
                    const Text(
                      "Prathmesh Godage",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    const Text(
                      "Computer Engineering",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 70,
                    child: const Center(
                      child: Column(
                        children: [
                          Text(
                            "123",
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 18),
                          ),
                          Text("posts")
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    width: 70,
                    child: const Center(
                      child: Column(
                        children: [
                          Text(
                            "404k",
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 18),
                          ),
                          Text("followers")
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    width: 70,
                    child: const Center(
                      child: Column(
                        children: [
                          Text(
                            "1080",
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 18),
                          ),
                          Text("following")
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 50,
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Container(
                width: 180,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 230, 230, 228),
                ),
                child: const Center(
                  child: Text(
                    "Edit profile",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 180,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 230, 230, 228),
                ),
                child: const Center(
                  child: Text(
                    "Share profile",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 230, 230, 228),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/add-user-svgrepo-com.svg",
                      width: 14,
                    ),
                  ))
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 1.0))),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => _onTabTapped(0), // Tap on grid
                child: Container(
                  width: 143,
                  height: 50,
                  child: Center(
                    child: SvgPicture.asset(
                        "assets/Grid-3x3-Gap-Fill--Streamline-Bootstrap.svg"),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: selectedIndex == 0 ? Colors.black : Colors.white,
                        width: 4,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => _onTabTapped(1), // Tap on reel
                child: Container(
                  width: 143,
                  height: 50,
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/instareel.svg",
                      width: 20,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: selectedIndex == 1 ? Colors.black : Colors.white,
                        width: 4,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => _onTabTapped(2),
                child: Container(
                  width: 143,
                  height: 50,
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/instagram-tag-icon.svg",
                      width: 20,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: selectedIndex == 2 ? Colors.black : Colors.white,
                        width: 4,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Show selected widget here
        selectedIndex == 0
            ? PostData()
            : selectedIndex == 1
                ? ReelPost()
                : MyTag(),
      ],
    );
  }
}
