import 'package:flutter/material.dart';
import 'package:list_view/baza/service_baza.dart';
import 'package:list_view/widgets/list_phone.dart';
import 'package:list_view/widgets/list_service.dart';

class PhoneService extends StatefulWidget {
  final int indexr;
  const PhoneService({Key? key, required this.indexr}) : super(key: key);

  @override
  State<PhoneService> createState() => _PhoneServiceState();
}

class _PhoneServiceState extends State<PhoneService> {
  ListServiceBaza2 a = ListServiceBaza2();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "телефоны служб",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //медицина
                  SizedBox(height: 30),
                  Text(
                    "Медицина",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 100,
                    color: Colors.white,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: a.baza.length,
                      itemBuilder: (context, i) {
                        return Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            PageViewScrol2(
                                index: i,
                                icons: a.baza[i].icon,
                                textReach: a.baza[i].reachtext,
                                textsmall: a.baza[i].smalltext),
                          ],
                        );
                      },
                    ),
                  ),
                  //полиция
                  SizedBox(height: 30),
                  Text(
                    "Полиция",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 100,
                    color: Colors.white,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: a.baza.length,
                      itemBuilder: (context, i) {
                        return Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            PageViewScrol2(
                                index: i,
                                icons: a.baza[i].icon,
                                textReach: a.baza[i].reachtext,
                                textsmall: a.baza[i].smalltext),
                          ],
                        );
                      },
                    ),
                  ),
                  //Посольство
                  SizedBox(height: 30),
                  Text(
                    "Посольство",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 100,
                    color: Colors.white,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: a.baza.length,
                      itemBuilder: (context, i) {
                        return Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            PageViewScrol2(
                                index: i,
                                icons: a.baza[i].icon,
                                textReach: a.baza[i].reachtext,
                                textsmall: a.baza[i].smalltext),
                          ],
                        );
                      },
                    ),
                  ),
                  // Транспорт
                  SizedBox(height: 30),
                  Text(
                    "Транспорт",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 100,
                    color: Colors.white,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: a.baza.length,
                      itemBuilder: (context, i) {
                        return Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            PageViewScrol2(
                                index: i,
                                icons: a.baza[i].icon,
                                textReach: a.baza[i].reachtext,
                                textsmall: a.baza[i].smalltext),
                          ],
                        );
                      },
                    ),
                  ),
                ]),
          ),
        )));
  }
}
