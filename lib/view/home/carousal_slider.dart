import 'package:flutter/material.dart';
import 'package:test_app_ui/utils/constants.dart';

class CarousalSlider extends StatefulWidget {
  const CarousalSlider({super.key});

  @override
  State<CarousalSlider> createState() => _CarousalSliderState();
}

class _CarousalSliderState extends State<CarousalSlider> {
  List images = [
    'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/670720/pexels-photo-670720.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/598917/pexels-photo-598917.jpeg?auto=compress&cs=tinysrgb&w=600'
  ];
  late final PageController pageController;
  int page = 0;
  int value = 6;
  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.8);
    super.initState();
  }
@override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
@override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 200,
            // width: 300,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) {
                page = index;
                setState(() {});
              },
              itemBuilder: (_, index) {
                return AnimatedBuilder(
                  animation: pageController,
                  builder: (ctx, child) {
                    return child!;
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                        right: 8, left: 4, bottom: 12, top: 36),
                    height: 100,
                    // width: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          ConstantsColors.purplecolor,
                          Colors.amber.shade100..withOpacity(0.1),
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.5, 0.0),
                      ),
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: ConstantsColors.purplecolor,
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(2, 6), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, top: 28),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Skillaley',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Ui design kit',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, left: 8, right: 4),
                            child: Row(
                              children: [
                                for (int i = 0; i < images.length; i++)
                                  Align(
                                    widthFactor: 0.7,
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundImage: NetworkImage(images[i]),
                                    ),
                                  ),
                                const SizedBox(
                                  width: 20,
                                ),
                                SliderTheme(
                                  data: const SliderThemeData(
                                    trackHeight: 2,
                                    thumbColor: Colors.white,
                                    thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 8.0,
                                    ),
                                  ),
                                  child: Expanded(
                                    child: Slider(
                                        min: 1.0,
                                        max: 10.0,
                                        thumbColor: Colors.white,
                                        inactiveColor: Colors.black,
                                        value: value.toDouble(),
                                        activeColor: Colors.blue,
                                        onChanged: (double newvalue) {
                                          setState(() {
                                            value = newvalue.round();
                                          });
                                        }),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 2,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Container(
                height: 4,
                width: page == index ? 22 : 12,
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: page == index ? Colors.black : Colors.grey.shade400,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
