import 'package:flutter/material.dart';

class ReelPost extends StatelessWidget {
  const ReelPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 525,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(bottom: 2),
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                  Container(
                    width: 143,
                    height: 200,
                    color: const Color.fromARGB(255, 238, 238, 239),
                    child: Image.network(
                      "https://img.freepik.com/free-photo/vertical-view-famous-rock-santa-giulia-beach_268835-3733.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 143,
                    height: 200,
                    color: const Color.fromARGB(255, 238, 238, 239),
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-uIP50kNtRsixCpFpC_ukKb_XrTXm02PP-A&s",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 142,
                    height: 200,
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSu1bHZQ9J7oqzZJtP4u2fmm8Bd1MPdgLAIcQ&s",
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
