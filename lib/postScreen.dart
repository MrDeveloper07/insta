import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 45),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.amberAccent,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/cross-svgrepo-com.svg",
                        width: 18,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "New post",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 22),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.blueAccent,
                    ),
                  ),
                )
              ],
            ),
          ),

          
        ],
      ),
    );
  }
}
