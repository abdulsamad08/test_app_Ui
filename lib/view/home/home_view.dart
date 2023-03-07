import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:test_app_ui/utils/constants.dart';
import 'package:test_app_ui/view/home/carousal_slider.dart';
import 'package:test_app_ui/view/home/home.dart';
import 'package:test_app_ui/widgets/custContainer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List titleText = ['Brief for project Tutorium', 'Study Report'];
  List subtitleText = ['shared by judi', 'shared by Steve'];
  List containerText = ['PDF', 'PPT'];
  List constColors = [ConstantsColors.skyBlue, ConstantsColors.orangecolor];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  children: [
                    custContainer(const Image(
                        image: AssetImage('assets/images/sorticon.JPG'))),
                    const Spacer(),
                    custContainer(badges.Badge(
                      position: badges.BadgePosition.topEnd(
                        top: -6,
                        end: -1,
                      ),
                      badgeStyle: const badges.BadgeStyle(
                        badgeColor: Colors.pinkAccent,
                      ),
                      badgeContent: const Positioned(
                          right: 10, top: 10, child: Text('3')),
                      child: const Center(child: Icon(Icons.notifications)),
                    )),
                  ],
                ),
              ),
              const CarousalSlider(),
              const Padding(
                padding: EdgeInsets.only(
                  top: 30,
                ),
                child: Text(
                  'Risent Files',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              // for (var texttitle in titleText)
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ListTile(
                  title: const Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Text('Brief for project Tutorium',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  subtitle: Text('Shared by juli',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey.shade400)),
                  leading: custCont(ConstantsColors.skyBlue),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ListTile(
                  title: const Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Text('Study Report',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  subtitle: Text('Shared by Steve',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey.shade400)),
                  leading: custCont(ConstantsColors.orangecolor),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[Icon(Icons.home)],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => TaskManager())));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_outlined,
                          color: Colors.grey.shade400,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite_border, color: Colors.grey.shade400)
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person, color: Colors.grey.shade400)
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
