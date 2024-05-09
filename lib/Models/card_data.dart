class CardData {
  final String dressName, dressColor, dressSize, dressImage;
  final int dressPrice;

  const CardData({
    required this.dressName,
    required this.dressColor,
    required this.dressSize,
    required this.dressPrice,
    required this.dressImage,
  });
}

List<CardData> contents = [
  const CardData(
    dressName: "Pullover",
    dressColor: "Black",
    dressSize: "L",
    dressPrice: 51,
    dressImage: "assets/images/pullover.png"
  ),
  const CardData(
      dressName: "T-Shirt",
      dressColor: "Grey",
      dressSize: "L",
      dressPrice: 30,
      dressImage: "assets/images/tShirt.png"
  ),
  const CardData(
      dressName: "Sport Dress",
      dressColor: "Black",
      dressSize: "M",
      dressPrice: 43,
      dressImage: "assets/images/sport.png"
  )
];
