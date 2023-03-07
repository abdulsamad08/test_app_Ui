import 'package:flutter/material.dart';
import 'package:test_app_ui/utils/constants.dart';
import 'package:test_app_ui/view/home/home_view.dart';
import 'package:test_app_ui/widgets/custContainer.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ImageConstants.person1),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 300,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 28),
                        child: Textwidgett(
                            'Manage Your\n Daily Tasks', 40, 0xff052F42),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Center(
                          child: Text(
                            '''WORK ON BIG IDEAS, WITHOUT THE
                            BUSYWORK''',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: 15,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: const Color(0xffe91e63),
                              borderRadius: BorderRadius.circular(13)),
                          child: Transform.rotate(
                            angle: 3.7,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeView()));
                                },
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Skip',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
