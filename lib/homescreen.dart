import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Stack(
                          alignment: Alignment
                              .bottomRight, // Align the button to the bottom right
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Center(
                                    child: Container(
                                      height: 80,
                                      width:
                                          80, // Make sure to set width for consistency
                                      clipBehavior: Clip.antiAlias,
                                      child: Image.asset(
                                        "assets/img2.png",
                                        fit: BoxFit.cover,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Your Story",
                                  style:
                                      TextStyle(fontSize: 14), // Your text here
                                  overflow: TextOverflow
                                      .ellipsis, // This ensures the text gets truncated with '...'
                                  maxLines: 1, // Limits the text to 1 line
                                  softWrap:
                                      false, // Prevents wrapping to the next line
                                ),
                              ],
                            ),
                            // Button
                            Container(
                              margin: EdgeInsets.only(
                                  left: 20,
                                  bottom: 20), // Adjust padding as needed
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors
                                      .blueAccent, // Background color for the button
                                  border: Border.all(
                                      color: Colors.white,
                                      width: 2), // Border for the button
                                ),
                                child: Center(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 12,
                                    ), // Icon for the button
                                    onPressed: () {
                                      // Define your button action here
                                      print('Add Story pressed!');
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 100,
                        height: 110,
                        child: Column(
                          children: [
                            Container(
                              height: 83,
                              width: 83,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.purple,
                                      Colors.pink,
                                      Colors.orange,
                                      Colors.yellow
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                child: Container(
                                  height: 78,
                                  width: 78,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 73,
                                      height: 73,
                                      child: Image.asset(
                                        "assets/prof1.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              " Pavan Kumarnath",
                              style: TextStyle(fontSize: 13), // Your text here
                              overflow: TextOverflow
                                  .ellipsis, // This ensures the text gets truncated with '...'
                              maxLines: 1, // Limits the text to 1 line
                              softWrap:
                                  false, // Prevents wrapping to the next line
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 100,
                        height: 110,
                        child: Column(
                          children: [
                            Container(
                              height: 83,
                              width: 83,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.purple,
                                      Colors.pink,
                                      Colors.orange,
                                      Colors.yellow
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                child: Container(
                                  height: 78,
                                  width: 78,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 73,
                                      height: 73,
                                      child: Image.asset(
                                        "assets/prof2.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              " Rithik Roshna Sir",
                              style: TextStyle(fontSize: 13), // Your text here
                              overflow: TextOverflow
                                  .ellipsis, // This ensures the text gets truncated with '...'
                              maxLines: 1, // Limits the text to 1 line
                              softWrap:
                                  false, // Prevents wrapping to the next line
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 100,
                        height: 110,
                        child: Column(
                          children: [
                            Container(
                              height: 83,
                              width: 83,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.purple,
                                      Colors.pink,
                                      Colors.orange,
                                      Colors.yellow
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                child: Container(
                                  height: 78,
                                  width: 78,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 73,
                                      height: 73,
                                      child: Image.asset(
                                        "assets/prof3.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              " Danny Norwar's",
                              style: TextStyle(fontSize: 13), // Your text here
                              overflow: TextOverflow
                                  .ellipsis, // This ensures the text gets truncated with '...'
                              maxLines: 1, // Limits the text to 1 line
                              softWrap:
                                  false, // Prevents wrapping to the next line
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 100,
                        height: 110,
                        child: Column(
                          children: [
                            Container(
                              height: 83,
                              width: 83,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.purple,
                                      Colors.pink,
                                      Colors.orange,
                                      Colors.yellow
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                child: Container(
                                  height: 78,
                                  width: 78,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 73,
                                      height: 73,
                                      child: Image.asset(
                                        "assets/img1.png",
                                        fit: BoxFit.cover,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              " Pavan Kumarnath", // Your text here
                              overflow: TextOverflow
                                  .ellipsis, // This ensures the text gets truncated with '...'
                              maxLines: 1, // Limits the text to 1 line
                              softWrap:
                                  false, // Prevents wrapping to the next line
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 60,
                      // color: Colors.amber,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset("assets/img1.png"),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(24)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 45,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Prathmesh Godage",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      "Thergaon, Pune",
                                      style: TextStyle(fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                    Container(
                      height: 380,
                      child: Image.asset(
                        "assets/img3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      // color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/comment.svg",
                                      height: 25,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/send.svg",
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            child: const Icon(
                              Icons.bookmark_outline,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      width: MediaQuery.of(context).size.width,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Liked by vishnu_08 and others"),
                          Text(
                              "Nature is a vast and intricate tapestry woven withrough ancient rock, whispering stories of time."),
                          Text(
                            "4 days ago",
                            style: TextStyle(
                                color: Color.fromARGB(255, 137, 136, 136)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 60,
                      // color: Colors.amber,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset("assets/img1.png"),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(24)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 45,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Rahul Jain",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      "Uttarakhand, India",
                                      style: TextStyle(fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                    Container(
                      height: 380,
                      child: Image.asset(
                        "assets/post1.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      // color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/comment.svg",
                                      height: 25,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/send.svg",
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            child: const Icon(
                              Icons.bookmark_outline,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      width: MediaQuery.of(context).size.width,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Liked by vishnu_08 and others"),
                          Text(
                              "Nature is a vast and intricate tapestry woven withrough ancient rock, whispering stories of time."),
                          Text(
                            "4 days ago",
                            style: TextStyle(
                                color: Color.fromARGB(255, 137, 136, 136)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 60,
                      // color: Colors.amber,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset("assets/img1.png"),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(24)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 45,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Riddhi Kumari",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      "California, USA",
                                      style: TextStyle(fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                    Container(
                      height: 380,
                      child: Image.asset(
                        "assets/post3.jpg",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      // color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/comment.svg",
                                      height: 25,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/send.svg",
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            child: const Icon(
                              Icons.bookmark_outline,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      width: MediaQuery.of(context).size.width,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Liked by vishnu_08 and others"),
                          Text(
                              "Nature is a vast and intricate tapestry woven withrough ancient rock, whispering stories of time."),
                          Text(
                            "4 days ago",
                            style: TextStyle(
                                color: Color.fromARGB(255, 137, 136, 136)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Suggested reels",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 200,
                            width: 140,
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              "assets/reel4.jpg",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 200,
                            width: 140,
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              "assets/reel5.jpg",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 200,
                            width: 140,
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              "assets/reel1.jpeg",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 200,
                            width: 140,
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              "assets/reel2.jpeg",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 200,
                            width: 140,
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              "assets/reel3.jpeg",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          const SizedBox(
                            width: 5,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 60,
                      // color: Colors.amber,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset("assets/img1.png"),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(24)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 45,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Prathmesh Godage",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      "Thergaon, Pune",
                                      style: TextStyle(fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                    Container(
                      height: 380,
                      child: Image.asset(
                        "assets/img3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      // color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/comment.svg",
                                      height: 25,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/send.svg",
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            child: const Icon(
                              Icons.bookmark_outline,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      width: MediaQuery.of(context).size.width,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Liked by vishnu_08 and others"),
                          Text(
                              "Nature is a vast and intricate tapestry woven withrough ancient rock, whispering stories of time."),
                          Text(
                            "4 days ago",
                            style: TextStyle(
                                color: Color.fromARGB(255, 137, 136, 136)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 60,
                      // color: Colors.amber,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset("assets/img1.png"),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(24)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 45,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Rahul Jain",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      "Uttarakhand, India",
                                      style: TextStyle(fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                    Container(
                      height: 380,
                      child: Image.asset(
                        "assets/post1.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      // color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/comment.svg",
                                      height: 25,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/send.svg",
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            child: const Icon(
                              Icons.bookmark_outline,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      width: MediaQuery.of(context).size.width,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Liked by vishnu_08 and others"),
                          Text(
                              "Nature is a vast and intricate tapestry woven withrough ancient rock, whispering stories of time."),
                          Text(
                            "4 days ago",
                            style: TextStyle(
                                color: Color.fromARGB(255, 137, 136, 136)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 60,
                      // color: Colors.amber,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset("assets/img1.png"),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(24)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 45,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Riddhi Kumari",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      "California, USA",
                                      style: TextStyle(fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                    Container(
                      height: 380,
                      child: Image.asset(
                        "assets/post3.jpg",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      // color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/comment.svg",
                                      height: 25,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/send.svg",
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            child: const Icon(
                              Icons.bookmark_outline,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      width: MediaQuery.of(context).size.width,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Liked by vishnu_08 and others"),
                          Text(
                              "Nature is a vast and intricate tapestry woven withrough ancient rock, whispering stories of time."),
                          Text(
                            "4 days ago",
                            style: TextStyle(
                                color: Color.fromARGB(255, 137, 136, 136)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
