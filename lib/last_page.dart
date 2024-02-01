import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';

class LastPage extends StatefulWidget {
  const LastPage({super.key});

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  late PageController _pageController;
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1,
      initialPage: 1,
    );
    _pageController.addListener(_handlePageChange);
  }

  void _handlePageChange() {
    setState(() {
      _currentIndex = _pageController.page!.round();
    });
  }

  List<Widget> indicators(int imagesLength, int currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: currentIndex == index
              ? const Color.fromRGBO(63, 196, 255, 1)
              : Colors.black26,
          shape: BoxShape.circle,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LastPage'),
      ),
      body: Column(children: [
        RichText(
            text: const TextSpan(
                text: 'What',
                style: TextStyle(
                    fontSize: 28,
                    color: Color.fromRGBO(30, 41, 59, 1),
                    fontFamily: 'Nato',
                    fontWeight: FontWeight.w700),
                children: [
              TextSpan(
                text: ' parents',
                style: TextStyle(
                    fontSize: 28,
                    color: Color.fromRGBO(148, 111, 198, 1),
                    fontFamily: 'Nato',
                    fontWeight: FontWeight.w700),
              ),
              TextSpan(
                  text: ' say',
                  style: TextStyle(
                      fontSize: 28,
                      color: Color.fromRGBO(30, 41, 59, 1),
                      fontFamily: 'Nato',
                      fontWeight: FontWeight.w700))
            ])),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              width: MediaQuery.of(context).size.width * 0.72,
              height: 300,
              child: PageView.builder(
                controller: _pageController,
                itemCount: 3,
                itemBuilder: (context, index) => slider_con(index),
              ),
            ),
            IconButton(
              onPressed: () {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOutCubic,
                );
              },
              icon: const Icon(Icons.arrow_forward),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(63, 196, 255, 1),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: indicators(3, _currentIndex),
        ),
        // Expanded(
        //   flex: 0,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Container(
        //         height: 35,
        //         width: 35,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(20),
        //           color: const Color.fromRGBO(63, 196, 255, 1),
        //         ),
        //         margin: const EdgeInsets.only(left: 10, right: 20),
        //         child: const Icon(Icons.arrow_back),
        //       ),
        //       // PageView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) => null))
        //       // Expanded(
        //       //   child: slider_con(),
        //       // ),
        //       Expanded(
        //         child: PageView.builder(
        //           controller: _pageController,
        //           itemCount: 3, // Set the number of pages you want
        //           itemBuilder: (context, index) => Text("hello"),
        //         ),
        //       ),
        //       Container(
        //         height: 35,
        //         width: 35,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(20),
        //           color: const Color.fromRGBO(63, 196, 255, 1),
        //         ),
        //         margin: const EdgeInsets.only(left: 20, right: 10),
        //         child: const Icon(Icons.arrow_forward),
        //       ),
        //     ],
        //   ),
        // ),
        const Spacer(),
        Flex(direction: axisDirectionToAxis(AxisDirection.down), children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            color: const Color.fromRGBO(241, 241, 252, 1),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.40,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/logo 2.png",
                            height: 60,
                            width: 120,
                          ),
                          const Text(
                            "We have best quality education courses and we provide education courses for students parents.",
                            style: TextStyle(fontFamily: 'Nato'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: Column(
                        children: [
                          Accordion(
                              headerBackgroundColor: Colors.white,
                              headerBorderRadius: 5,
                              contentBorderColor:
                                  const Color.fromRGBO(63, 196, 255, 1),
                              headerPadding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              children: [
                                AccordionSection(
                                  rightIcon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                  header: const Text("Quick Links"),
                                  content: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("About Us"),
                                      Text("Courses"),
                                      Text("Become a Teacher"),
                                      Text("Become a Parent"),
                                    ],
                                  ),
                                ),
                                AccordionSection(
                                  rightIcon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                  header: const Text("More Links"),
                                  content: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Sign in"),
                                      Text("Sign up"),
                                      Text("Buy Courses"),
                                      Text("Contact Us"),
                                    ],
                                  ),
                                ),
                                AccordionSection(
                                  rightIcon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                  header: const Text(
                                    "Our Newsletter",
                                    style: TextStyle(
                                      fontFamily: 'Nato',
                                    ),
                                  ),
                                  content: const Column(
                                    children: [
                                      Text(
                                        "Get subscribe our newsletter for updates",
                                        style: TextStyle(
                                          fontFamily: 'Nato',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    )
                  ],
                ),
                const Divider(),
                const Text(
                  "© NotePal  |  All Rights Reserved 2023",
                  style: TextStyle(
                    color: Color.fromRGBO(30, 41, 59, 1),
                    fontFamily: 'Nato',
                  ),
                ),
              ],
            ),
          ),
        ])
      ]),
    );
  }

  AnimatedContainer slider_con(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      child: Column(children: [
        const Text(
          "We have best quality education courses and we provide education courses for students parents.",
          // style: TextStyle(fo),
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Nato',
              fontSize: 12,
              color: Color.fromRGBO(115, 115, 115, 1)),
        ),
        const SizedBox(
          height: 25,
        ),
        Image.asset(
          "assets/images/Ellipse 14.png",
          height: 85,
          width: 85,
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "John Smith",
          style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Nato'),
        ),
        const Text(
          "parents",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: 'Nato',
            fontSize: 10,
            color: Color.fromRGBO(115, 115, 115, 1),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "I am one of the users of notepal. I like how the mentors teach and guide, and they will give tips and tricks for competitive exams.",
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w500, fontFamily: 'Nato', fontSize: 14),
        ),
      ]),
    );
  }
}
