import 'package:flutter/material.dart';

class PostData extends StatelessWidget {

  List<dynamic> imges = [
    [
      "https://play-lh.googleusercontent.com/4t7_uRj7B2YwIWBSMDsvET1X0v1w5-Z06NDhDQ2Cd_Vv-VOAw0ZcC_d5xHqFhf1Y2g=w526-h296-rw",
      "https://www.shutterstock.com/shutterstock/photos/2235047505/display_1500/stock-vector-young-girl-anime-style-character-vector-illustration-design-manga-anime-girl-hair-faces-cartoon-2235047505.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc-mqLayESeL4RE5ayMWt_nFEC3v3b4SvwuQ&s"
    ],
    [
      "https://www.shutterstock.com/image-vector/young-man-anime-style-character-600w-2240084847.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFeTFMIvnVkskMOv9iZm_dQyWspeY71YLx0w&s",
      "https://i.pinimg.com/736x/d2/6d/2a/d26d2aab2ff63cb48b3a91b0e8e0aa55.jpg"
    ],
    [
      "https://m.media-amazon.com/images/I/61Rx9tHudUL.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAn8Js6VQn6XUy8LYzHN3G-S-iSazl29s7TQ&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc_OCPpEGp_MnMkEOdodONMSffsljp1IJQlw&s"
    ],
    [
      "https://play-lh.googleusercontent.com/4t7_uRj7B2YwIWBSMDsvET1X0v1w5-Z06NDhDQ2Cd_Vv-VOAw0ZcC_d5xHqFhf1Y2g=w526-h296-rw",
      "https://www.shutterstock.com/shutterstock/photos/2235047505/display_1500/stock-vector-young-girl-anime-style-character-vector-illustration-design-manga-anime-girl-hair-faces-cartoon-2235047505.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc-mqLayESeL4RE5ayMWt_nFEC3v3b4SvwuQ&s"
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 525,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: ListView.builder(
              itemCount: imges.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 2),
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 143,
                        color: const Color.fromARGB(255, 238, 238, 239),
                        child: Image.network(
                          imges[index][0],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 143,
                        color: const Color.fromARGB(255, 238, 238, 239),
                        child: Image.network(
                          imges[index][1],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 142,
                        color: const Color.fromARGB(255, 238, 238, 239),
                        child: Image.network(
                          imges[index][2],
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                );
              }),
        );
  }
}