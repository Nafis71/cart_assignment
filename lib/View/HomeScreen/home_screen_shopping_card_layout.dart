import '../../Models/card_data.dart';
import 'package:flutter/material.dart';
import '../../Themes/text_theme.dart';
import '../Components/shopping_card_labels.dart';
import '../Components/shopping_card_quantity_button.dart';

class ShoppingCard extends StatelessWidget {
  final double screenHeight, screenWidth;
  final Orientation orientation;
  final int index;
  final Function increaseQuantity;
  final Function decreaseQuantity;

  const ShoppingCard({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.orientation,
    required this.index,
    required this.increaseQuantity,
    required this.decreaseQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: (orientation == Orientation.portrait)
          ? screenHeight * 0.16
          : screenHeight * 0.4,
      width: screenWidth * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.00),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.05),
            blurStyle: BlurStyle.normal,
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.34,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.00),
                  bottomLeft: Radius.circular(10.00)),
              color: const Color(0xFFE3E3E3),
              image: DecorationImage(
                  image: AssetImage(contents[index].dressImage),
                  fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(11.00),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        children: [
                          Text(
                            contents[index].dressName,
                            style: TextThemes.getTextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Wrap(
                        alignment: WrapAlignment.end,
                        children: [
                          Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: Wrap(
                      children: [
                        Wrap(
                          children: [
                            ShoppingCardLabels.getDressLabel(
                              text: "Color",
                              isLabel: true,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ShoppingCardLabels.getDressLabel(
                              text: contents[index].dressColor,
                              isLabel: false,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            ShoppingCardLabels.getDressLabel(
                              text: "Size:",
                              isLabel: true,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ShoppingCardLabels.getDressLabel(
                              text: contents[index].dressSize,
                              isLabel: false,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: (orientation == Orientation.portrait)
                        ? MediaQuery.of(context).size.height * 0.05
                        : MediaQuery.of(context).size.height * 0.16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ShoppingCardQuantityButton(
                          icon: Icons.remove,
                          onPressed: decreaseQuantity,
                        ),
                        Wrap(
                          children: [
                            Text(
                              contents[index].quantity.toString(),
                              style: TextThemes.getTextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        ShoppingCardQuantityButton(
                          icon: Icons.add,
                          onPressed: increaseQuantity,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Wrap(
                              alignment: WrapAlignment.end,
                              children: [
                                Text(
                                  "${contents[index].dressPrice * contents[index].quantity}\$",
                                  style: TextThemes.getTextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
