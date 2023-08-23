// ignore_for_file: must_be_immutable, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:healthcare_app/constants.dart';
import 'package:healthcare_app/models/doctor_model.dart';
import 'package:healthcare_app/screens/appointment_screen.dart';

class HomeScreen extends StatelessWidget {
  List<String> symptoms = [
    "Temperature",
    "Snuffle",
    "Fever",
    "Cough",
    "Cold",
  ];

  List<DoctorsModel> doctor = [
    DoctorsModel(
      img: "doctor1.jpg",
      job: "Therapist",
      name: "Emma",
      rate: 4.5,
      about:
          'Diagnoses and treats mental health disorders. Creates individualized treatment plans according to patient needs and circumstances. Meets with patients regularly to provide counseling, treatment and adjust treatment plans as necessary. Conducts ongoing assessments of patient progress.',
      price: 150,
      rate_about:
          'It took me a while to find a doctor that made me feel comfortable and welcome! she as well as her staff are awesome, they listen and give the best advice.she really strives to give the best care possible to each of her patients.',
    ),
    DoctorsModel(
      img: "doctor2.jpg",
      job: "Physician",
      name: "Sara",
      rate: 4.8,
      about:
          'Versatile Physician with 6 years of experience diagnosing and developing effective patient treatment plans. Exhibits excellent interpersonal skills that quickly establish rapport with patients, families, and peers. Licensed and Board certified in Los Angeles and Atlanta',
      price: 250,
      rate_about:
          'It took me a while to find a doctor that made me feel comfortable and welcome! she as well as her staff are awesome, they listen and give the best advice.she really strives to give the best care possible to each of her patients.',
    ),
    DoctorsModel(
      img: "doctor3.jpg",
      job: "General practitioner",
      name: "Ali",
      rate: 4.7,
      about:
          'General Practitioner with 15 years of private practice and hospital experience. Excellent decision-making, planning, time-management, and crisis-management capabilities. Strong leadership and clinical abilities complemented by administrative and management skills. Adept at establishing priorities and making quick decisions. Functions effectively and efficiently in multidisciplinary teams and works collaboratively with doctors, nurses, and other healthcare professionals to enhance patient care.',
      price: 200,
      rate_about:
          'It took me a while to find a doctor that made me feel comfortable and welcome! he as well as his staff are awesome, they listen and give the best advice.he really strives to give the best care possible to each of her patients.',
    ),
    DoctorsModel(
      img: "doctor4.jpg",
      job: "Dermatologist",
      name: "Ahmed",
      rate: 4.5,
      about:
          'Dynamic and dedicated dermatologist professional with 2 years of experience evaluating and diagnosing a broad range of skin health conditions for patients at a private practice. In-depth knowledge of current dermatological principles, methods, and procedures for the delivery of skin evaluations and treatments. Proven communication, attention to detail, organizational, and problem-solving skills. Efficiently works with diverse patient populations.',
      price: 300,
      rate_about:
          'It took me a while to find a doctor that made me feel comfortable and welcome! he as well as his staff are awesome, they listen and give the best advice.he really strives to give the best care possible to each of her patients.',
    ),
  ];

  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Ahmed",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/doctor3.jpg"),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 5,
                                    spreadRadius: 4,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      // shape: BoxShape.circle,//! you can use this too
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: kPrimaryColor,
                                      size: 35,
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  const Text(
                                    "Clinic Visit",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "Make an appointment",
                                    style: TextStyle(
                                      color: Color.fromARGB(137, 208, 208, 208),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ), //!!!!!!! inkwell 1
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                    spreadRadius: 4,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFF0EEFA),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.home_filled,
                                      color: kPrimaryColor,
                                      size: 35,
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  const Text(
                                    "Home Visit",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "Call the doctor home",
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "What are your symptoms?",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: symptoms.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF4F6FA),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  symptoms[index],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Popular Doctors",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: doctor.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AppointmentScreen(
                                    doctor: doctor[index],
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.symmetric(vertical: 15),
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
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundImage: AssetImage(
                                        "images/${doctor[index].img}"),
                                  ),
                                  Text(
                                    "Dr. ${doctor[index].name}",
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  Text(
                                    doctor[index].job,
                                    style: const TextStyle(
                                      color: Colors.black45,
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        "${doctor[index].rate}",
                                        style: const TextStyle(
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


  // List<String> imgs = [
  //   "doctor1.jpg",
  //   "doctor2.jpg",
  //   "doctor3.jpg",
  //   "doctor4.jpg",
  // ];

  // List<String> doctors = [
  //   "Emma",
  //   "Sara",
  //   "Ali",
  //   "Ahmed",
  // ];
