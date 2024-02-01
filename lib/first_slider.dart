import 'package:first_demo/Widget/text_widget.dart';
import 'package:flutter/material.dart';

class SliderFirst extends StatelessWidget {
  const SliderFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Courses")),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromRGBO(63, 196, 255, 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                softWrap: true,
                text: const TextSpan(
                    text: 'Our top ',
                    style: TextStyle(
                        fontFamily: "Nato",
                        color: Color.fromRGBO(30, 41, 59, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 35),
                    children: [
                      TextSpan(
                        text: 'courses',
                        style: TextStyle(
                            fontFamily: "Nato",
                            color: Color.fromRGBO(148, 111, 198, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 35),
                      ),
                      TextSpan(
                        text: ' for you',
                        style: TextStyle(
                            color: Color.fromRGBO(30, 41, 59, 1),
                            fontFamily: "Nato",
                            fontWeight: FontWeight.w700,
                            fontSize: 35),
                      )
                    ]),
              ),
              const SizedBox(
                height: 5,
              ),
              Texties().smallText(
                  "We have best quality education courses and we provide education courses for students parents."),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  childAspectRatio: (1.96 / 3),
                ),
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics(), // Prevent GridView from scrolling
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  final imageIndex = index % 3; // Repeats the images
                  return courseGrid(
                      "assets/images/Group ${imageIndex + 1}.png");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container courseGrid(String image) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
          // border: Border.all(),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              image,
              width: 216,
              height: 134,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize:
                          MaterialStateProperty.all(const Size(46.5, 12)),
                      // backgroundColor:
                      //     MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        // side: const BorderSide(color: Colors.red)
                      ))),
                  child: const Text(
                    "English",
                    style: TextStyle(fontSize: 7),
                  )),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "The Complete Science Course.",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Nato',
                    color: Color.fromRGBO(30, 41, 59, 1)),
              ),
              const Text(
                "We have best quality education courses and we provide education courses.",
                style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Nato',
                    color: Color.fromRGBO(115, 115, 115, 1)),
              ),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(63, 196, 255, 1),
                    ),
                    minimumSize: MaterialStateProperty.all(const Size(50, 20)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ))),
                child: const Text(
                  "Buy Courses",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      textBaseline: TextBaseline.ideographic),
                ),
              )
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      height: 15,
                      width: 15,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(63, 196, 255, 0.1),
                        // border: Border.all(width: 2)
                      ),
                      child: Image.asset(
                        "assets/images/Person.png",
                        height: 8,
                        width: 8,
                      )),
                  const Text(
                    "200k",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Nato",
                      color: Color.fromRGBO(115, 115, 115, 1),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(63, 196, 255, 0.1),
                        // border: Border.all(width: 2)
                      ),
                      child: Image.asset(
                        "assets/images/star.png",
                        height: 10,
                        width: 10,
                      )),
                  const Text(
                    "4.9",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Nato",
                      color: Color.fromRGBO(115, 115, 115, 1),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(63, 196, 255, 0.1),
                        // border: Border.all(width: 2)
                      ),
                      child: Image.asset(
                        "assets/images/coin.png",
                        height: 10,
                        width: 10,
                      )),
                  const Text(
                    "105.00",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Nato",
                      color: Color.fromRGBO(115, 115, 115, 1),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
