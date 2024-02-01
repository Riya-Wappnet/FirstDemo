import 'package:flutter/material.dart';

class SliderCategory extends StatefulWidget {
  const SliderCategory({super.key});

  @override
  State<SliderCategory> createState() => _SliderCategoryState();
}

class _SliderCategoryState extends State<SliderCategory> {
  late PageController _pageController;
  int activePage = 1;
  List<Map<String, dynamic>> images = [
    {'images': "assets/images/XMLID_5773_.png", 'title': 'Science'},
    {'images': "assets/images/XMLID_5650_.png", 'title': 'Commerce'},
    {'images': "assets/images/XMLID_5729_.png", 'title': 'Mathematics'},
    {'images': "assets/images/XMLID_5685_.png", 'title': 'Geography'},
    {'images': "assets/images/XMLID_5626_.png", 'title': 'English'}
  ];
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: 1,
    );
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index
                ? const Color.fromRGBO(63, 196, 255, 1)
                : Colors.black26,
            shape: BoxShape.circle),
      );
    });
  }

  AnimatedContainer slider(images, pagePosition, active) {
    double margin = active ? 10 : 20;
    return AnimatedContainer(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(
        bottom: 30,
      ),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              // alignment: Alignment.center,
              image: AssetImage(images[pagePosition]['images']))),
      child: Text(
        images[pagePosition]['title'],
        style: const TextStyle(fontFamily: 'Nato', fontWeight: FontWeight.w700),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: const TextSpan(
                    text: 'Browse',
                    style: TextStyle(
                        fontSize: 28,
                        color: Color.fromRGBO(30, 41, 59, 1),
                        fontFamily: 'Nato',
                        fontWeight: FontWeight.w700),
                    children: [
                  TextSpan(
                    text: ' courses',
                    style: TextStyle(
                        fontSize: 28,
                        color: Color.fromRGBO(148, 111, 198, 1),
                        fontFamily: 'Nato',
                        fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                      text: ' by categories',
                      style: TextStyle(
                          fontSize: 28,
                          color: Color.fromRGBO(30, 41, 59, 1),
                          fontFamily: 'Nato',
                          fontWeight: FontWeight.w700))
                ])),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: const Text(
                'We have best quality education courses and we provide education courses for students parents.',
                softWrap: true,
                maxLines: 4,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOutCubic,
                    );
                  },
                  icon: const Icon(Icons.arrow_back),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(63, 196, 255, 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.68,
                  child: PageView.builder(
                      itemCount: images.length,
                      pageSnapping: true,
                      controller: _pageController,
                      onPageChanged: (page) {
                        setState(() {
                          activePage = page;
                        });
                      },
                      itemBuilder: (context, pagePosition) {
                        bool active = pagePosition == activePage;
                        return slider(images, pagePosition, active);
                      }),
                ),
                IconButton(
                  onPressed: () {
                    _pageController.nextPage(
                        duration: const Duration(microseconds: 700),
                        curve: Curves.easeInOutCirc);
                  },
                  icon: const Icon(Icons.arrow_forward),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(63, 196, 255, 1))),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: indicators(images.length, activePage),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(148, 111, 198, 1),
              ),
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/images/courses-icon.png",
                              height: 60,
                              width: 60,
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "500+",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Total Courses",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/images/teacher-icon.png",
                              height: 60,
                              width: 60,
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "250+",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Total Techers",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/images/parents-icon.png",
                              height: 60,
                              width: 60,
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "10K+",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Total Parents",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
