import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  CallScreen({Key? key}) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Редактировать",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "Название",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                    TextFormField(
                        decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Водитель такси',
                    )),
                    SizedBox(height: 30),
                    Text(
                      "Телефон",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                    TextFormField(
                        decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: '8-911-111-22-33',
                    )),
                    SizedBox(height: 30),
                    Text(
                      "Описание",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                    TextFormField(
                        decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Водитель Владимир; четные даты',
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 49,
                        width: 344,
                        alignment: Alignment.center,
                        child: const Text(
                          "ДОБАВИТЬ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            // fontWeight: FontWeight.bold,
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 49,
                        width: 344,
                        alignment: Alignment.center,
                        child: const Text(
                          "УДАЛИТЬ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            // fontWeight: FontWeight.bold,
                          ),
                        )),
                  ]),
            )));
  }
}
