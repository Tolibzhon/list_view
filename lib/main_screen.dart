import 'package:flutter/material.dart';
import 'package:list_view/widgets/page_view_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              child: PageView(controller: controller, children: const [
                PageViewChildren(
                  image: "assets/images/Globus.png",
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis aliquam id id in pharetra lorem. Purus tortor velit sed consequat urna, ipsum. Sit nullam ultrices sed morbi sed. Et blandit commodo vel blandit praesent sed donec ultrices a. Vel, laoreet in et quam elit, sed viverra faucibus.",
                ),
                PageViewChildren(
                  image: "assets/images/Globus.png",
                  text: "Second screen",
                ),
                PageViewChildren(
                  image: "assets/images/Globus.png",
                  text: "Third screen",
                ),
                PageViewChildren(
                  image: "assets/images/Globus.png",
                  text: "Four screen",
                  isTrue: true,
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 100,
            child: SmoothPageIndicator(
              controller: controller,
              count: 4,
              effect: ColorTransitionEffect(
                dotHeight: 8,
                dotWidth: 8,
                strokeWidth: 10,
                dotColor: Color(0xff50B1DE).withOpacity(0.5),
                activeDotColor: Color(0xff2D98DA),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
