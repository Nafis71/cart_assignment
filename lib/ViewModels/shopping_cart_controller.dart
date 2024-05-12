import 'package:flutter/material.dart';
import '../Models/card_data.dart';
import '../View/Components/app_alert_dialog.dart';

class ShoppingCartController {
  BuildContext context;

  ShoppingCartController({required this.context});

  int calculateTotalPrice(List<CardData> contents) {
    int totalPrice = 0;
    for (CardData data in contents) {
      totalPrice += data.dressPrice;
    }
    return totalPrice;
  }

  int increaseQuantity(int totalPrice, int index, Orientation orientation) {
    if (contents[index].quantity < 5) {
      contents[index].quantity++;
      totalPrice += contents[index].dressPrice;
    }
    if (contents[index].quantity == 5) {
      showAlertDialog(index, orientation);
    }
    return totalPrice;
  }

  int decreaseQuantity(int totalPrice, int index) {
    if (contents[index].quantity > 1) {
      contents[index].quantity--;
      totalPrice -= contents[index].dressPrice;
    }
    return totalPrice;
  }

  void showAlertDialog(int index, Orientation orientation) {
    showDialog(
      context: context,
      builder: (context) {
        return AppAlertDialog(
          title: "Congratulations!",
          content:
              "You have added \n5 ${contents[index].dressName.toString()}\n in your bag!",
          orientation: orientation,
        );
      },
    );
  }
}
