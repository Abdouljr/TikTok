// LA PAGE D'ACCUEIL
import 'dart:math' as math;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map> tiktokVideos = [
    {
      "video": "assets/videos/video_1.mp4",
    },
    {
      "video": "assets/videos/video_2.mp4",
    },
    {
      "video": "assets/videos/video_3.mp4",
    },
    {
      "video": "assets/videos/video_4.mp4",
    },
    {
      "video": "assets/videos/video_5.mp4",
    },
    {
      "video": "assets/videos/video_6.mp4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: double.infinity,
        scrollDirection: Axis.vertical,
        viewportFraction: 1.0,
      ),
      items: tiktokVideos.map((video) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              color: const Color(0xFF141518),
              child: Stack(
                children: [
                  Videowidget(
                    videoUrl: video["video"],
                  ),
                  const ContenuPost(),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

// LES VIDEOS POSTEES

class Videowidget extends StatefulWidget {
  const Videowidget({required this.videoUrl, super.key});
  final String videoUrl;

  @override
  State<Videowidget> createState() => _VideowidgetState(this.videoUrl);
}

class _VideowidgetState extends State<Videowidget> {
  late VideoPlayerController _controller;
  final String videoUrl;
  _VideowidgetState(this.videoUrl);

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(videoUrl)
      ..initialize().then((_) {
        // _controller.play();
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}

// CONTENU DES VIDEOS POSTEES

class ContenuPost extends StatelessWidget {
  const ContenuPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 100,
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Suivis',
                  style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Pour moi',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ],
            )),
        Expanded(
            child: SizedBox(
                // color: Colors.red.withOpacity(0.5),
                child: Row(
          children: [
            Expanded(
              child: Container(
                // color: Colors.red.withOpacity(0.5),
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '@Abdoulaziz Maïga',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'je ne sais pas vraiment quoi écrire ici donc on fait comme ça sinon rien à dire',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Icon(
                          Icons.music_note,
                          color: Colors.white,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Original sound _Dr Keb',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 70,
              // color: Colors.green.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    // height: 80,
                    // color: Colors.yellow,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profil.jpg'),
                            radius: 30,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    // height: 80,
                    // color: Colors.blue,
                    child: Column(
                      children: const [
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 40,
                        ),
                        Text(
                          "94K",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    // color: Colors.purple,
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.chat_bubble,
                          color: Colors.white,
                          size: 40,
                        ),
                        Text(
                          "94K",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    // color: Colors.purple,
                    child: Column(
                      children: const [
                        // SizedBox(
                        //   height: 5,
                        // ),
                        Icon(
                          Icons.bookmark_rounded,
                          color: Colors.white,
                          size: 44,
                        ),
                        Text(
                          "94K",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    // height: 80,
                    // color: Colors.purple,
                    child: Column(
                      children: const [
                        Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 40,
                        ),
                        Text(
                          "94K",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    child: const LogoTikAnimation(),
                  )
                ],
              ),
            )
          ],
        )))
      ],
    );
  }
}

class LogoTikAnimation extends StatefulWidget {
  const LogoTikAnimation({Key? key}) : super(key: key);

  @override
  _LogoTikAnimationState createState() => _LogoTikAnimationState();
}

class _LogoTikAnimationState extends State<LogoTikAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Container(
        height: 45,
        width: 45,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: const DecorationImage(
            image: AssetImage("assets/images/disc.png"),
          ),
        ),
        child: Image.asset('assets/images/music.jpg'),
      ),
    );
  }
}
