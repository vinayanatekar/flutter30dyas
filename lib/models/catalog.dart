// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

// ignore_for_file: non_constant_identifier_names

class CatalogModel {
  static List<Item> items=[];
}

class Item {
  final num id;
  final String productname;
  final num price;
  final String description;
  final String color;
  final String image;
  Item({
    required this.id,
    required this.productname,
    required this.price,
    required this.description,
    required this.color,
    required this.image,
  });

  // Item({this.id, this.productname, this.price, this.color, this.image});

  Item copyWith({
    num? id,
    String? productname,
    num? price,
    String? description,
    String? color,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      productname: productname ?? this.productname,
      price: price ?? this.price,
      description: description ?? this.description,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'productname': productname,
      'price': price,
      'description': description,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as num,
      productname: map['productname'] as String,
      price: map['price'] as num,
      description: map['description'] as String,
      color: map['color'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, productname: $productname, price: $price, description: $description, color: $color, image: $image)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.productname == productname &&
        other.price == price &&
        other.description == description &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        productname.hashCode ^
        price.hashCode ^
        description.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
