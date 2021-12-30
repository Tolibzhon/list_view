import 'package:flutter/material.dart';

import 'call_screen.dart';

class PhoneCard extends StatefulWidget {
  final int indexr;
  const PhoneCard({Key? key, required this.indexr}) : super(key: key);

  @override
  State<PhoneCard> createState() => _PhoneCardState();
}

class _PhoneCardState extends State<PhoneCard> {
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: const Text(
            "карточка телефона",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isTrue = !isTrue;
                });
              },
              icon: Icon(
                isTrue ? Icons.favorite : Icons.favorite_border_outlined,
                color: Colors.red,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  "Скорая помощь",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "112",
                        style: TextStyle(
                            fontSize: 41, fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CallScreen())),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 49,
                            width: 159,
                            alignment: Alignment.center,
                            child: const Text(
                              "позвонить",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                    ]),
                SizedBox(
                  height: 30,
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et sed tempor, at magna purus quam sit id. Ut id aliquam molestie tortor, amet, suspendisse mi. Dictum viverra accumsan a proin amet. Amet, velit consequat enim urna, pellentesque in cursus auctor. Erat a, sapien, nisl id et. Egestas rhoncus, commodo convallis mauris. "),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Причины вызова",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("Причина 1"),
                SizedBox(
                  height: 20,
                ),
                Text("Причина 1"),
                SizedBox(
                  height: 20,
                ),
                Text("Причина 1"),
              ]),
        ));
  }
}
