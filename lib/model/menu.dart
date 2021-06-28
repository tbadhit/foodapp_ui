import 'package:equatable/equatable.dart';

class Menu extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final double price;
  final String textFood;

  Menu({this.id, this.picturePath, this.name, this.price, this.textFood});

  @override
  // TODO: implement props
  List<Object> get props => [id, picturePath, name, price, textFood];
}

List<Menu> mockMenus = [
  Menu(
      id: 1,
      picturePath: 'assets/pizza.png',
      name: 'Pizza',
      price: 49.999,
      textFood: 'Delicious food 2021'),
  Menu(
      id: 2,
      picturePath: 'assets/hamburger.png',
      name: 'Hamburger',
      price: 59.999,
      textFood: 'Delicious food 2021'),
  Menu(
      id: 3,
      picturePath: 'assets/hotdog.png',
      name: 'Hotdog',
      price: 34.999,
      textFood: 'Delicious food 2021'),
];
