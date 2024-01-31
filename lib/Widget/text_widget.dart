import 'package:flutter/material.dart';

class Texties {
  Text smallText(String text) {
    return Text(
      text,
      style: const TextStyle(
          color: Color.fromRGBO(115, 115, 115, 1),
          fontWeight: FontWeight.w400,
          fontSize: 15,
          fontFamily: 'Nato'),
    );
  }

  Text cardSmallText(String text) {
    return Text(
      text,
      style: const TextStyle(
          color: Color.fromRGBO(115, 115, 115, 1),
          fontWeight: FontWeight.w400,
          fontSize: 12,
          fontFamily: 'Nato'),
    );
  }

  ElevatedButton blueButton(String text) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            const Color.fromRGBO(63, 196, 255, 1),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
