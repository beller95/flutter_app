import 'package:flutter/material.dart';
import 'package:the_flutter_app/constants.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id, this.image, this.title, this.price, this.description, this.size, this.color
  });
}

List<Product> products = [
  Product(
    id: 1,
    image: "assets/images/samsung_s21.webp",
    title: "Samsung S21",
    price: 649,
    description: samsungDummy,
    size: 256,
    color: colorThird,
  ),
  Product(
    id: 2,
    image: "assets/images/samsung_s21.webp",
    title: "Samsung S21",
    price: 599,
    description: samsungDummy,
    size: 128,
    color: colorThird,
  ),
  Product(
    id: 3,
    image: "assets/images/iphone_12.png",
    title: "Iphone 12",
    price: 499,
    description: appleDummy,
    size: 128,
    color: colorThird,
  ),
  Product(
    id: 4,
    image: "assets/images/iphone_12.png",
    title: "Iphone 12",
    price: 399,
    description: appleDummy,
    size: 64,
    color: colorThird,
  ),
];

String samsungDummy = "The Galaxy S21 and S21+ now feature lower-res OLEDs, no microSD expansion, and no chargers in the box.";
String appleDummy = "The iPhone 12 comes with a slew of other upgrades, including a new design with improved durability, an OLED screen, and 5G support.";