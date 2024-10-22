import 'package:flutter/material.dart';

class SearchBarscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 35,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 2.0),
                filled: true,
                fillColor: Colors.grey[200], // Light background color
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 25),
          width: MediaQuery.of(context).size.width,
          color: Colors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 144,
                        height: 140,
                        color: const Color.fromARGB(255, 230, 230, 228),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTyQkEDvbNQT9-V78BtGtMTC1LWDg8oMmKpQ&s",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 144,
                        height: 140,
                        child: Image.network(
                          "https://images.news18.com/ibnlive/uploads/2024/03/virat-kohli-new-look-2024-03-6f105a11359bcf373307174cbcf039c9-3x2.jpg",
                          fit: BoxFit.cover,
                        ),
                        color: const Color.fromARGB(255, 230, 230, 228),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 144,
                        height: 140,
                        child: Image.network(
                          "https://www.fanclash.in/blog/wp-content/uploads/2022/10/is-BGMI-going-to-bounce-back-1.jpg",
                          fit: BoxFit.cover,
                        ),
                        color: const Color.fromARGB(255, 230, 230, 228),
                      ),
                      Container(
                        width: 144,
                        height: 140,
                        color: const Color.fromARGB(255, 230, 230, 228),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThMH4FiUOE7GGrpvt_K3-LLRSSca1S_FtB5Q&s",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 143,
                    height: 280,
                    color: const Color.fromARGB(255, 230, 230, 228),
                    child: Image.network(
                      "https://i.pinimg.com/236x/40/1e/ed/401eed72ad2db46fd0bc927e2b3d8e4a.jpg",
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 143,
                    height: 280,
                    color: const Color.fromARGB(255, 230, 230, 228),
                    child: Image.network(
                      "https://www.roamingparis.com/wp-content/uploads/2022/12/e-omar-sy-683x1024.jpg.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 144,
                        height: 140,
                        color: const Color.fromARGB(255, 230, 230, 228),
                        child: Image.network(
                          "https://images.news18.com/ibnlive/uploads/2023/09/south-actress-samyuktha-menon-looks-ethereal-as-the-makers-of-swayambhu-drop-new-poster.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 144,
                        height: 140,
                        color: const Color.fromARGB(255, 230, 230, 228),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkYtI3HNLOtxrXtPk6ywAWz8fev1Dg1_02bQ&s",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 144,
                        height: 140,
                        color: const Color.fromARGB(255, 230, 230, 228),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTyQkEDvbNQT9-V78BtGtMTC1LWDg8oMmKpQ&s",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 144,
                        height: 140,
                        color: const Color.fromARGB(255, 230, 230, 228),
                        child: Image.network(
                            "https://english.mathrubhumi.com/image/contentid/policy:1.7968549:1666055832/bts.jpg?\$p=58badad&f=1x1&w=1080&q=0.8"),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 144,
                        height: 140,
                        color: const Color.fromARGB(255, 230, 230, 228),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTyQkEDvbNQT9-V78BtGtMTC1LWDg8oMmKpQ&s",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 144,
                        height: 140,
                        color: const Color.fromARGB(255, 230, 230, 228),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThMH4FiUOE7GGrpvt_K3-LLRSSca1S_FtB5Q&s",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 144,
                        height: 140,
                        color: const Color.fromARGB(255, 230, 230, 228),
                        child: Image.network(
                          "https://assets.telegraphindia.com/telegraph/2024/May/1715749889_nitanshi-goel.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 144,
                        height: 140,
                        color: const Color.fromARGB(255, 230, 230, 228),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkD2OHB0tsoP2RF4CjQ_Hl-3iEYxZ0muodNA&s",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 143,
                    height: 280,
                    child: Image.network(
                      "https://img.jagranjosh.com/webstories/76255/snapinsta.app-401906693-3643539975870755-5155763662531973283-n-1080-1704777381.jpeg",
                      fit: BoxFit.cover,
                    ),
                    color: const Color.fromARGB(255, 230, 230, 228),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
