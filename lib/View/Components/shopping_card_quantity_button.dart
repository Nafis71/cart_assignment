import 'package:flutter/material.dart';

class ShoppingCardQuantityButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  const ShoppingCardQuantityButton(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.05),
            blurStyle: BlurStyle.normal,
            blurRadius: 15,
            spreadRadius: 5,
            offset: const Offset(0, 10),
          )
        ],
      ),
      alignment: Alignment.center,
      child: IconButton(
        onPressed: () => onPressed(),
        icon: Icon(
          icon,
          color: Colors.grey,
          size: 26,
        ),
      ),
    );
  }
}
