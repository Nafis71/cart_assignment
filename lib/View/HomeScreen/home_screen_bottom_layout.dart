import 'package:flutter/material.dart';

import '../../Themes/text_theme.dart';

class HomeScreenBottomLayout extends StatelessWidget {
  final Orientation orientation;
  final double screenHeight, screenWidth;
  final Function onPressed;
  final int totalPrice;

  const HomeScreenBottomLayout({
    super.key,
    required this.orientation,
    required this.screenHeight,
    required this.screenWidth,
    required this.onPressed,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (orientation == Orientation.portrait)
          ? screenHeight * 0.14
          : screenHeight * 0.22,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                children: [
                  Text("Total amount",
                      style: TextThemes.getTextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          fontSize: 16)),
                ],
              ),
              Wrap(
                children: [
                  Text("${totalPrice.toString()}\$",
                      style: TextThemes.getTextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              ),
            ],
          ),
          SizedBox(
            height: (orientation == Orientation.portrait) ? 20 : 10,
          ),
          Center(
            child: SizedBox(
              width: screenWidth * 0.9,
              height: (orientation == Orientation.portrait)
                  ? MediaQuery.of(context).size.height * 0.06
                  : MediaQuery.of(context).size.height * 0.12,
              child: ElevatedButton(
                onPressed: () => onPressed(),
                child: const Text("CHECK OUT"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
