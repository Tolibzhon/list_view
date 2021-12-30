import 'package:flutter/material.dart';

import '../phone_service.dart';

class PageViewScrol extends StatelessWidget {
  final int index;
  final String icons;
  final String textReach;
  final String textsmall;
  const PageViewScrol({
    Key? key,
    required this.icons,
    required this.textReach,
    required this.textsmall,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PhoneService(
                    indexr: index,
                  ))),
      child: Container(
        alignment: Alignment.center,
        height: 90,
        width: 339,
        decoration: BoxDecoration(
          color: Color(0xff59A4F2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(icons, height: 70),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                textsmall,
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              Text(
                textReach,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ]),
            SizedBox(
              width: 15,
            )
          ],
        ),
      ),
    );
  }
}
