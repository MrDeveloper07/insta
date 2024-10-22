import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyTag extends StatelessWidget {
  const MyTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: 550,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
                child: SvgPicture.asset(
              "assets/instagram-tag-icon.svg",
              width: 55,
            )),
          ),
          Text(
            "Photos and videos of you",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
              width: 280,
              child: Text(
                "When people tag you in photos and videos, they'll appear here.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ))
        ],
      ),
    );
  }
}
