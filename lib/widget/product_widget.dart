import 'package:flutter/material.dart';

class ProductWidget extends ListTile {
  final String img;
  final String name;
  final double price;

  ProductWidget(
      {super.key, required this.img, required this.name, required this.price})
      : super(
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
          leading: CircleAvatar(
            backgroundImage: AssetImage(img),
            radius: 30,
          ),
          title: Text(name),
          subtitle: Text('\$ ${price.toStringAsFixed(2)}'),
        );
}
