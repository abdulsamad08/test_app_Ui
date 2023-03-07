import 'package:flutter/material.dart';

List images = [
  'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/670720/pexels-photo-670720.jpeg?auto=compress&cs=tinysrgb&w=600',
];

custTaskContainer(text, text1, text2, text3, colors) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        height: 100,
        width: 240,
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 5),
                child: Text(
                  text2,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              Text(
                text3,
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    fontSize: 13),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  for (int i = 0; i < images.length; i++)
                    Align(
                      widthFactor: 0.7,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(images[i]),
                      ),
                    ),
                  const Spacer(),
                  Text(
                    text1,
                    style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: 13),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
