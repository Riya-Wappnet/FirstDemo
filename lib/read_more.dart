import 'package:first_demo/Widget/text_widget.dart';
import 'package:flutter/material.dart';

class ReadMore extends StatelessWidget {
  const ReadMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Read More"),
      ),
      body: Container(
        color: const Color.fromRGBO(148, 111, 198, 0.08),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                text: 'Why we are the best from others?',
                style: TextStyle(
                    fontFamily: "Nato",
                    color: Color.fromRGBO(30, 41, 59, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 50),
              ),
            ),
            Texties().smallText(
                "We have best quality education courses and we provide education courses for students parents."),
            Texties().blueButton("Buy Courses"),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              // height: MediaQuery.of(context).size.height * 0.63,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    childAspectRatio: (1 / 1.55)),
                shrinkWrap: false,
                children: [
                  card_read("Best Teachers",
                      "We have skills teachers in communication, listening, collaboration, adaptability,empathy and patience. Other characteristics of effective teaching include an engaging classroom presence."),
                  card_read("Cetificate",
                      "We have skills teachers in communication,listening, collaboration, adaptability,empathy and patience. Other characteristics of effective teaching include an engaging classroom presence."),
                  card_read("Best Price",
                      "We have skills teachers in communication, listening, collaboration, adaptability, empathy and patience. Other characteristics of effective teaching include an engaging classroom presence."),
                  card_read("Creative Thiking",
                      "We have skills teachers in communication, listening, collaboration, adaptability, empathy and patience. Other characteristics of effective teaching include an engaging classroom presence."),
                  card_read("Best Curriculm",
                      "We have skills teachers in communication, listening, collaboration, adaptability, empathy and patience. Other characteristics of effective teaching include an engaging classroom presence.,"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container card_read(String title, String desc) {
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 45,
                width: 45,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromRGBO(63, 196, 255, 1),
                  // border: Border.all(width: 2)
                ),
                child: Image.asset(
                  "assets/images/Group.png",
                  height: 3,
                  width: 3,
                )),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontFamily: 'Nato',
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(30, 41, 59, 1),
                  fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            Texties().cardSmallText(desc)
          ],
        ));
  }
}
