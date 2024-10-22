import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

class ReelScreen extends StatefulWidget {
  @override
  _ReelScreenState createState() => _ReelScreenState();
}

class _ReelScreenState extends State<ReelScreen> {
  // List of video URLs for the reels
  final List<String> videoUrls = [
    'assets/reelvideo.mp4',
    'assets/reelvideo2.mp4',
    'assets/reelvideo3.mp4',
    'assets/reelvideo4.mp4',
    // Add more video URLs here
  ];

  // Create a list of controllers for each video
  List<VideoPlayerController> _controllers = [];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    // Initialize VideoPlayerController for each video URL
    for (var url in videoUrls) {
      _controllers.add(VideoPlayerController.asset(url)
        ..initialize().then((_) {
          setState(() {}); // Rebuild after video initialization
        })
        ..setLooping(true));
    }

    // Start playing the first video automatically when page loads
    _controllers[_currentPage].play();
  }

  @override
  void dispose() {
    // Dispose all video controllers
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fullscreen PageView with videos
          PageView.builder(
            scrollDirection: Axis.vertical, // Scroll vertically
            itemCount: videoUrls.length,
            onPageChanged: (index) {
              setState(() {
                // Pause the previous video
                _controllers[_currentPage].pause();

                // Update the current page index
                _currentPage = index;

                // Play the new video automatically
                _controllers[_currentPage].play();
              });
            },
            itemBuilder: (context, index) {
              final controller = _controllers[index];

              return Stack(
                children: [
                  // Fullscreen video player
                  Center(
                    child: controller.value.isInitialized
                        ? SizedBox.expand(
                            // Make the video player fullscreen
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: SizedBox(
                                width: controller.value.size.width,
                                height: controller.value.size.height,
                                child: VideoPlayer(controller),
                              ),
                            ),
                          )
                        : const Center(
                            child:
                                CircularProgressIndicator()), // Loading indicator
                  ),

                  // Play / Pause toggle on tap
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (controller.value.isPlaying) {
                          controller.pause();
                        } else {
                          controller.play();
                        }
                      });
                    },
                  ),

                  // Like, Comment, Share buttons (overlay)
                  Positioned(
                    right: 10,
                    bottom: 30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.favorite_outline,
                                  color: Colors.white,
                                  size: 36,
                                ),
                                onPressed: () {
                                  // Add like functionality here
                                },
                              ),
                              const Text(
                                "59k",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          child: Column(
                            children: [
                              IconButton(
                                icon: SvgPicture.asset(
                                  "assets/comment.svg",
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  // Add comment functionality here
                                },
                              ),
                              const Text(
                                "4.3k",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          child: Column(
                            children: [
                              IconButton(
                                icon: SvgPicture.asset(
                                  "assets/send.svg",
                                  color: Colors.white,
                                  width: 36,
                                ),
                                onPressed: () {
                                  // Add share functionality here
                                },
                              ),
                              const Text(
                                "203k",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/three-dots-vertical-svgrepo-com.svg",
                              color: Colors.white,
                              width: 20,
                            ))
                      ],
                    ),
                  ),
                  Positioned(
                      left: 10,
                      bottom: 80,
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Colors.red,
                                      Colors.orange,
                                      Colors.pink,
                                      Colors.yellow,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Image.asset("assets/img1.png"),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "desimusicblush",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 27,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white, width: 1.4),
                                  borderRadius: BorderRadius.circular(6)),
                              child: const Center(
                                  child: Text(
                                "Follow",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                            )
                          ],
                        ),
                      )),
                  const Positioned(
                    left: 15,
                    bottom: 55,
                    child: Text(
                      "Story games are always an emotion ...",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    bottom: 10,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          height: 25,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 80, 79, 79)
                                .withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/music-svgrepo-com.svg",
                                color: Colors.white,
                                height: 10,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "Capital Cities - safe and secured",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          height: 25,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 80, 79, 79)
                                .withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/gift-svgrepo-com.svg",
                                color: Colors.white,
                                height: 10,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "Send gift",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 31, 30, 29),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/music-svgrepo-com.svg",
                              color: Colors.white,
                              width: 10,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 60,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Reels",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.camera_enhance_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
