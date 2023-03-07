import 'package:flutter/material.dart';
import 'package:test_app_ui/utils/constants.dart';
import 'package:test_app_ui/widgets/custContainer.dart';
import 'package:test_app_ui/widgets/task_widget.dart';

class TaskManager extends StatefulWidget {
  TaskManager({super.key});

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  List containerText = [
    " 14\nMon",
    " 15\nTus",
    " 16\nThu",
    "17\nFri",
  ];

  List timeText = ['9 AM', '10 AM', '11 AM', '12 PM', '1 PM', '12 PM'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
                  const Spacer(),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(ImageConstants.person1),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    size: 14,
                  ),
                  const Icon(
                    Icons.arrow_back_ios,
                    size: 12,
                  ),
                  Text(
                    'NOV',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade800),
                  ),
                  const Spacer(),
                  const Text(
                    'DEC',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const Spacer(),
                  Text(
                    'JAN',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade800),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  for (var text in containerText) custContainer2('$text'),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  'Ongoing',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              custTaskContainer(
                  '9 AM\n\n\n10 Am',
                  '9:00 am - 10:00 am',
                  'Mobile App Design',
                  'Anul and Mike',
                  ConstantsColors.purplecolor),
              custTaskContainer('11 AM\n\n\n12 Pm', '10:00 am - 11:20 am',
                  'Software Testing', 'nmi and welly', ConstantsColors.skyBlue),
              custTaskContainer(
                  '1 PM\n\n\n12 Pm',
                  '1:00 pm - 2:00 pm',
                  'Web Development',
                  'mikle and nmty',
                  ConstantsColors.orangecolor),
            ],
          ),
        ),
      ),
    );
  }
}
