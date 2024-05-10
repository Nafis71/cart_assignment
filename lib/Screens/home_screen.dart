import 'package:cart_assignment/Models/card_data.dart';
import 'package:cart_assignment/Widgets/app_alert_dialog.dart';
import 'package:cart_assignment/Widgets/home_screen_bottom_layout.dart';
import 'package:cart_assignment/Widgets/home_screen_title.dart';
import 'package:cart_assignment/Widgets/shopping_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int totalPrice;

  @override
  void initState() {
    totalPrice = calculateTotalPrice();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SafeArea(
        child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return (orientation == Orientation.portrait)
                ? Container( //portraitView
                    margin: const EdgeInsets.all(10.00),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HomeScreenTitle(),
                        SizedBox(
                          height:
                              (orientation == Orientation.portrait) ? 25 : 5,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: contents.length,
                            itemBuilder: (context, index) => ShoppingCard(
                              screenHeight: screenHeight,
                              screenWidth: screenWidth,
                              orientation: orientation,
                              index: index,
                              increaseQuantity: () =>
                                  increaseQuantity(index, orientation),
                              decreaseQuantity: () => decreaseQuantity(index),
                            ),
                          ),
                        ),
                        HomeScreenBottomLayout(
                          orientation: orientation,
                          screenHeight: screenHeight,
                          screenWidth: screenWidth,
                          totalPrice: totalPrice,
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(showSnackBar());
                          },
                        )
                      ],
                    ),
                  )
                : Container( //landScape View
                    margin: const EdgeInsets.all(10.00),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              const Expanded(
                                child: HomeScreenTitle()
                              ),
                              Expanded(
                                flex: 6,
                                child: ListView.builder(
                                  itemCount: contents.length,
                                  itemBuilder: (context, index) => ShoppingCard(
                                    screenHeight: screenHeight,
                                    screenWidth: screenWidth,
                                    orientation: orientation,
                                    index: index,
                                    increaseQuantity: () =>
                                        increaseQuantity(index, orientation),
                                    decreaseQuantity: () =>
                                        decreaseQuantity(index),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        HomeScreenBottomLayout(
                          orientation: orientation,
                          screenHeight: screenHeight,
                          screenWidth: screenWidth,
                          totalPrice: totalPrice,
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(showSnackBar());
                          },
                        ),
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }

  int calculateTotalPrice() {
    totalPrice = 0;
    for (CardData data in contents) {
      totalPrice += data.dressPrice;
    }
    return totalPrice;
  }

  void increaseQuantity(int index, Orientation orientation) {
    if (contents[index].quantity < 5) {
      contents[index].quantity = contents[index].quantity + 1;
      totalPrice += contents[index].dressPrice;
    }
    if (contents[index].quantity == 5) {
      showAlertDialog(index, orientation);
    }
    setState(() {});
  }

  void showAlertDialog(int index, Orientation orientation) {
    showDialog(
      context: context,
      builder: (context) {
        return AppAlertDialog(
            title: "Congratulations!",
            content:
                "You have added 5 ${contents[index].dressName.toString()} in your bag!",
            orientation: orientation);
      },
    );
  }

  void decreaseQuantity(int index) {
    if (contents[index].quantity > 1) {
      contents[index].quantity = contents[index].quantity - 1;
      totalPrice -= contents[index].dressPrice;
    }
    setState(() {});
  }

  SnackBar showSnackBar() {
    return SnackBar(
      content: const Text(
        "Congratulations! Your purchase was a success!!",
        style: TextStyle(
          fontSize: 15,
          fontFamily: "WorkSans",
        ),
      ),
      padding: const EdgeInsets.all(20.00),
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.green[600],
      elevation: 10,
    );
  }
}
