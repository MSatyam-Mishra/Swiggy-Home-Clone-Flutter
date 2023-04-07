import 'package:flutter/material.dart';
import 'package:swiggy_clone/model/category_data.dart';

class AppData {
  final offer = 399;
}

class OfferData {
  final String category, offerHeader, offer, image;
  LinearGradient bgColor;
  OfferData(
      {required this.category,
      required this.offerHeader,
      required this.offer,
      required this.image,
      required this.bgColor});
}

List<OfferData> offerCard = [
  OfferData(
      category: "Instamart",
      offerHeader: "MEGA \nSAVING \nFESTIVAL",
      offer: "Flat ₹100 off\n& free delivery",
      image: "assets/offer_icons/instamart.png",
      bgColor: LinearGradient(colors: [
        Color.fromARGB(255, 216, 6, 27),
        Color.fromARGB(255, 228, 89, 103),
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
  OfferData(
      category: "Food",
      offerHeader: "Best In \nOffer Zone",
      offer: "Up to 60% OFF\n& more",
      image: "assets/offer_icons/food-2.png",
      bgColor: LinearGradient(colors: [
        Color.fromARGB(255, 6, 72, 170),
        Color.fromARGB(255, 141, 158, 255),
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
  OfferData(
      category: "Instamart",
      offerHeader: "Just \nWinTer \nThings",
      offer: "Get flat ₹100 OFF+\non hot drinks",
      image: "assets/offer_icons/instamart-2.png",
      bgColor: LinearGradient(colors: [
        Color.fromARGB(255, 82, 15, 3),
        Color.fromARGB(255, 221, 70, 65),
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
  OfferData(
      category: "Food",
      offerHeader: "Up to\n60% OFF ",
      offer: "Order hearty meals for\nlate night hunger",
      image: "assets/offer_icons/food.png",
      bgColor: LinearGradient(colors: [
        Color.fromARGB(255, 136, 3, 16),
        Color.fromARGB(255, 228, 119, 130),
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
];
