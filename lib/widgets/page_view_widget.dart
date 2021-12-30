import 'package:flutter/material.dart';
import 'package:list_view/list_service_screen.dart';

class PageViewChildren extends StatelessWidget {
  final String image;
  final String text;
  final bool isTrue;
  const PageViewChildren(
      {Key? key, required this.image, required this.text, this.isTrue = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 170,
        ),
        SizedBox(
          height: 60,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15),
        ),
        isTrue != false
            ? IconButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListServiceScreen())),
                icon: Icon(Icons.arrow_forward))
            : const SizedBox()
      ],
    );
  }
}
