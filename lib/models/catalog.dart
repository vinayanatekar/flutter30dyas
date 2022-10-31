class Item {
  final String id;
  final String productname;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.productname,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "1",
      productname: "Samsung Mobile",
      price: 15000,
      color: "#008080",
      image:
          "https://www.samsung.com/global/galaxy/main/images/kv-galaxy-z-flip4_s.jpg")
];
