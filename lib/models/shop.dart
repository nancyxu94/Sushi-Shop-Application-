import 'package:flutter/material.dart';
import 'food.dart';

class Shop extends ChangeNotifier
{
  //food menu
  final List<Food> _foodMenu =
                  [
                    Food
                    (
                      name: "Ebi",
                      price: "6.00",
                      imagePath: "lib/images/ebi.png",
                      rating: "4.9",
                    ),
                    Food
                    (
                      name: "Maguro",
                      price: "6.00",
                      imagePath: "lib/images/maguro.png",
                      rating: "4.8",
                    ),
                    Food
                    (
                      name: "California Roll",
                      price: "5.00",
                      imagePath: "lib/images/california_roll.png",
                      rating: "4.6",
                    ),
                    Food
                    (
                      name: "Tamago",
                      price: "6.00",
                      imagePath: "lib/images/tamago.png",
                      rating: "4.9",
                    ),
                    Food
                    (
                      name: "Amaebi",
                      price: "6.00",
                      imagePath: "lib/images/amaebi.png",
                      rating: "4.9",
                    ),
                    Food
                    (
                      name: "Onigiri",
                      price: "12.00",
                      imagePath: "lib/images/onigiri.png",
                      rating: "5.0",
                    ),
                    Food
                    (
                      name: "Hotate",
                      price: "6.00",
                      imagePath: "lib/images/hotate.png",
                      rating: "4.8",
                    ),
                    Food
                    (
                      name: "Tako",
                      price: "5.00",
                      imagePath: "lib/images/tako.png",
                      rating: "4.6",
                    ),
                    Food
                    (
                      name: "Ikura",
                      price: "6.00",
                      imagePath: "lib/images/ikura.png",
                      rating: "4.8",
                    ),
                    Food
                    (
                      name: "Masago",
                      price: "6.00",
                      imagePath: "lib/images/masago.png",
                      rating: "4.8",
                    ),
                    Food
                    (
                      name: "Tekkamaki",
                      price: "5.00",
                      imagePath: "lib/images/tekkamaki.png",
                      rating: "4.5",
                    ),
                    Food
                    (
                      name: "Sake",
                      price: "5.00",
                      imagePath: "lib/images/sake.png",
                      rating: "4.6",
                    ),
                    Food
                    (
                      name: "Buri",
                      price: "6.00",
                      imagePath: "lib/images/buri.png",
                      rating: "4.7",
                    ),
                    Food
                    (
                      name: "Uramaki",
                      price: "5.00",
                      imagePath: "lib/images/uramaki.png",
                      rating: "4.6",
                    ),
                  ];

                  //customer cart
                  List<Food> _cart = [];

                  //getter methods
                  List<Food> get foodMenu => _foodMenu;
                  List<Food> get cart => _cart;

                  //add to cart
                  void addToCart(Food foodItem, int quantity)
                  {
                    for(int i = 0; i < quantity; i++)
                    {
                      _cart.add(foodItem);
                    }
                    notifyListeners();
                  }

                  //remove from cart
                  void removeFromCart(Food food)
                  {
                    _cart.remove(food);
                    notifyListeners();
                  }
}