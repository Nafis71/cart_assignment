import '../Models/card_data.dart';

class ShoppingCartController {
  int calculateTotalPrice(List<CardData> contents) {
    int totalPrice = 0;
    for (CardData data in contents) {
      totalPrice += data.dressPrice;
    }
    return totalPrice;
  }

  int increaseQuantity(int totalPrice, int index,List<CardData> contents ) {
    if (contents[index].quantity < 5) {
      contents[index].quantity++;
      totalPrice += contents[index].dressPrice;
    }
    return totalPrice;
  }

  int decreaseQuantity(int totalPrice, int index, List<CardData> contents) {
    if (contents[index].quantity > 1) {
      contents[index].quantity--;
      totalPrice -= contents[index].dressPrice;
    }
    return totalPrice;
  }

}
