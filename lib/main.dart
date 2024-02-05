import 'package:first_demo/Widget/text_widget.dart';
import 'package:first_demo/course_category.dart';
import 'package:first_demo/first_slider.dart';
import 'package:first_demo/last_page.dart';
import 'package:first_demo/read_more.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        fontFamily: 'Nato',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("hello")),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/logo 2.png",
                    height: 100,
                    width: 150,
                  ),
                  Image.asset(
                    "assets/images/banner-img (1).png",
                    height: 100,
                    width: 100,
                  ),
                ],
              )),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const SliderFirst()));
                },
                title: const Text("Courses"),
                trailing: const Icon(Icons.slideshow_rounded),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const LastPage()));
                },
                title: const Text("Last Page"),
                trailing: const Icon(Icons.arrow_forward),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const SliderCategory()));
                },
                title: const Text("Course Category Slider"),
                trailing: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
        body: Scaffold(
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                RichText(
                    text: const TextSpan(
                        text: 'Get Best Quality Education',
                        style: TextStyle(
                            fontFamily: "Nato",
                            color: Color.fromRGBO(30, 41, 59, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 40),
                        children: [
                      TextSpan(
                        text: ' Courses',
                        style: TextStyle(
                            fontFamily: "Nato",
                            color: Color.fromRGBO(63, 196, 255, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 40),
                      ),
                      TextSpan(
                        text: ' By',
                        style: TextStyle(
                            color: Color.fromRGBO(30, 41, 59, 1),
                            fontFamily: "Nato",
                            fontWeight: FontWeight.w700,
                            fontSize: 40),
                      ),
                      TextSpan(
                        text: ' NotePal',
                        style: TextStyle(
                            color: Color.fromRGBO(148, 111, 198, 1),
                            fontFamily: "Nato",
                            fontWeight: FontWeight.w700,
                            fontSize: 40),
                      )
                    ])),
                Texties().smallText(
                    "We have best quality education courses and we provide education courses for students parents they can login and select course for learning."),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Texties().blueButton("Get Courses"),
                    const SizedBox(
                      width: 10,
                    ),
                    // TextButton(
                    //     onPressed: () {},
                    //     child: Text(
                    //       'Read More',
                    //     )),
                    // Icon(
                    //   Icons.arrow_forward,
                    // ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ReadMore()));
                      },
                      child: const Row(
                        children: [
                          Text("Read More"),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  color: const Color.fromRGBO(148, 111, 198, 1),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Image.asset(
                              "assets/images/OBJECTS.png",
                            )),
                      ),
                      Container(
                        // color: Colors.red,
                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),

                        width: MediaQuery.of(context).size.width * 0.57,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                  text: "Join as a",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white,
                                    fontFamily: 'Nato',
                                    fontSize: 30,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "\nTeacher",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontFamily: 'Nato',
                                        fontSize: 30,
                                      ),
                                    )
                                  ]),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "If you want join as a parents and you want learn then you can join us.",
                              style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                                fontFamily: 'Nato',
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color.fromRGBO(63, 196, 255, 1),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Sign up",
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  color: const Color.fromRGBO(63, 196, 255, 1),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            left: 20, top: 10, bottom: 10),
                        // color: Colors.red,
                        width: MediaQuery.of(context).size.width * 0.57,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                  text: "Join as a",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white,
                                    fontFamily: 'Nato',
                                    fontSize: 30,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "\nParents",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontFamily: 'Nato',
                                        fontSize: 30,
                                      ),
                                    )
                                  ]),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "If you want join as a parents and you want learn then you can join us.",
                              style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                                fontFamily: 'Nato',
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color.fromRGBO(148, 111, 198, 1),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Sign up",
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        // color: Colors.amber,
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                              "assets/images/Parents preparing cute daughter to school [Converted] 1.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
