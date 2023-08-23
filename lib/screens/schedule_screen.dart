import 'package:flutter/material.dart';
import 'package:healthcare_app/constants.dart';
import 'package:healthcare_app/widgets/custom_inkwell.dart';
import 'package:healthcare_app/widgets/upcoming_schedule.dart';

class ScheduleScreen extends StatefulWidget {
  ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int index = 0;

  List<StatelessWidget> scheduleScreens = [
    UpcomingSchedule(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Schedule",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                // width: MediaQuery.of(context).size.width / 1.06,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomInkWell(
                      text: "Upcoming",
                      onTap: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      ButtonColor:
                          index == 0 ? kPrimaryColor : Colors.transparent,
                      TextColor: index == 0 ? Colors.white : Colors.black38,
                    ),
                    CustomInkWell(
                      text: "Waiting",
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      ButtonColor:
                          index == 1 ? kPrimaryColor : Colors.transparent,
                      TextColor: index == 1 ? Colors.white : Colors.black38,
                    ),
                    CustomInkWell(
                      text: "Completed",
                      onTap: () {
                        setState(() {
                          index = 2;
                        });
                      },
                      ButtonColor:
                          index == 2 ? kPrimaryColor : Colors.transparent,
                      TextColor: index == 2 ? Colors.white : Colors.black38,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Widgets According to buttons
            Expanded(
              child: scheduleScreens[index],
            )
          ],
        ),
      ),
    );
  }
}
