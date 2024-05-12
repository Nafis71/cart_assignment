import 'package:flutter/cupertino.dart';
import '../../Themes/text_theme.dart';

class HomeScreenTitle extends StatelessWidget {
  const HomeScreenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      children: [
        Text(
          "My Bag",
          style: TextThemes.getTextStyle(
              fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
