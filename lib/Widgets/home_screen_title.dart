import 'package:flutter/cupertino.dart';

class HomeScreenTitle extends StatelessWidget {
  const HomeScreenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      alignment: WrapAlignment.start,
      children: [
        Text(
          "My Bag",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              fontFamily: 'WorkSans'),
        ),
      ],
    );
  }
}
