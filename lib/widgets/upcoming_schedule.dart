// ignore_for_file: must_be_immutable, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:healthcare_app/constants.dart';
import 'package:healthcare_app/models/schedule_model.dart';

class UpcomingSchedule extends StatelessWidget {
  UpcomingSchedule({super.key});

  List<ScheduleModel> schedule = [
    ScheduleModel(
        drName: 'Dr. Emma',
        image: 'doctor1.jpg',
        job: 'Therapist',
        date: '30/8/2023',
        time: '10:30 AM',
        ConfirmedOrWaiting: 'Confirmed'),
    ScheduleModel(
        drName: 'Dr. Sara',
        image: 'doctor2.jpg',
        job: 'Physician',
        date: '5/9/2023',
        time: '6:20 AM',
        ConfirmedOrWaiting: 'Confirmed'),
    ScheduleModel(
        drName: 'Dr. Ali',
        image: 'doctor3.jpg',
        job: 'General practitioner',
        date: '15/9/2023',
        time: '2:30 PM',
        ConfirmedOrWaiting: 'Confirmed'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(
              //   "About Doctor",
              //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              // ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          schedule[index].drName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(schedule[index].job),
                        trailing: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('images/${schedule[index].image}'),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Divider(
                          // color: Colors.black,
                          thickness: 1,
                          height: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                color: Colors.black54,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                schedule[index].date,
                                style: const TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time_filled,
                                color: Colors.black54,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                schedule[index].time,
                                style: const TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                schedule[index].ConfirmedOrWaiting,
                                style: const TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 150,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF4F6FA),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 150,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  "Reschedule",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: schedule.length,
      ),
    );
  }
}
