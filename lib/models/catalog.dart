class CatalogModel {
  static final items = [
    Item(
        id: 1,
        productname: "Samsung Mobile",
        price: 15000,
        description: "very nice product",
        color: "#008080",
        image:
            "https://www.samsung.com/global/galaxy/main/images/kv-galaxy-z-flip4_s.jpg")
  ];
}

class Item {
  final num id;
  final String productname;
  final num price;
  final String description;
  final String color;
  final String image;

  // Item({this.id, this.productname, this.price, this.color, this.image});

  Item(
      {required this.id,
      required this.productname,
      required this.price,
      required this.color,
      required this.image,
      required this.description});
}
