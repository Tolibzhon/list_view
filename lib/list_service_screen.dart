import 'package:flutter/material.dart';
import 'package:list_view/baza/service_baza.dart';
import 'package:list_view/widgets/list_service.dart';

class ListServiceScreen extends StatefulWidget {
  const ListServiceScreen({Key? key}) : super(key: key);

  @override
  State<ListServiceScreen> createState() => _ListServiceScreenState();
}

class _ListServiceScreenState extends State<ListServiceScreen> {
  ListServiceBaza baza = ListServiceBaza();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16),
          itemCount: baza.baza.length,
          itemBuilder: (context, i) {
            return Column(children: [
              SizedBox(height: 20),
              PageViewScrol(
                  index: i,
                  icons: baza.baza[i].icon,
                  textReach: baza.baza[i].reachtext,
                  textsmall: baza.baza[i].smalltext),
            ]);
          },
        ),
      ),
    );
  }
}
