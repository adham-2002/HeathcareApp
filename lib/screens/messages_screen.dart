// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:healthcare_app/models/messages_model.dart';
import 'package:healthcare_app/screens/chat_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MessagesScreen extends StatelessWidget {
  List<MessagesModel> messages = [
    MessagesModel(
      drName: 'Dr. Emma',
      image: 'doctor1.jpg',
      time: '10:30',
    ),
    MessagesModel(
      drName: 'Dr. Ali',
      image: 'doctor3.jpg',
      time: '00:30',
    ),
    MessagesModel(
      drName: 'Dr. Sara',
      image: 'doctor2.jpg',
      time: '22:32',
    ),
    MessagesModel(
      drName: 'Dr. Ahmed',
      image: 'doctor4.jpg',
      time: '21:54',
    ),
    MessagesModel(
      drName: 'Dr. Emma',
      image: 'doctor1.jpg',
      time: '20:12',
    ),
    MessagesModel(
      drName: 'Dr. Emma',
      image: 'doctor2.jpg',
      time: '04:20',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Messages",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.search,
                  color: Color(0xFF113953),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 12),
                            width: 65,
                            height: 65,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(0, 3),
                                  ),
                                ]),
                            child: Stack(
                              textDirection: TextDirection.rtl,
                              children: [
                                Center(
                                  child: Container(
                                    height: 65,
                                    width: 65,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'images/${messages[index].image}'),
                                      radius: 30,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  top: 50,
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.green,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(messages[index].drName)
                        ],
                      );
                    },
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatScreen(
                                  drName: messages[index].drName,
                                  img: messages[index].image),
                            ));
                      },
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          "images/${messages[index].image}",
                        ),
                      ),
                      title: Text(
                        messages[index].drName,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Hello, Doctor, are you there? do you have some time to asking about some questions",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            messages[index].time,
                            style: const TextStyle(
                                fontSize: 15, color: Colors.black54),
                          ),
                          Icon(
                            FontAwesomeIcons.check,
                            size: 16,
                          ),
                          SizedBox(
                            height: 1,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
