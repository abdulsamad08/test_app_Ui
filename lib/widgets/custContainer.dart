import 'package:flutter/material.dart';

custContainer(child) {
  return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          spreadRadius: 4,
          blurRadius: 5,
          offset: const Offset(1, 3), // changes position of shadow
        ),
      ], borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: child);
}

custContainer2(text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(6),
        height: 105,
        width: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 9,
              offset: const Offset(0, 15), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text(
            "$text",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
      ),
    ),
  );
}

Textwidgett(
  String name,
  double fontSize,
  int ColorCode,
) {
  return Text(
    name,
    style: TextStyle(
        fontSize: fontSize,
        color: Color(ColorCode),
        fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}

custCont(ConstantsColors) {
  return Container(
    height: 60,
    width: 51,
    decoration: BoxDecoration(
        color: ConstantsColors,
        borderRadius: const BorderRadius.only(topRight: Radius.circular(22))),
    child: const Center(
      child: Text(
        'PDF',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
      ),
    ),
  );
}
