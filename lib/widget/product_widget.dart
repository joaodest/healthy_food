import 'package:flutter/material.dart';

import 'package:healthy_food/models/product_model.dart';

class ProductWidget extends StatelessWidget {

  final ProductModel productModel;

  const ProductWidget({
    Key? key,
    required this.productModel,
  }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return ListTile(
         trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
          leading: CircleAvatar(
            backgroundImage: AssetImage(productModel.img),
            radius: 30,
          ),
          title: Text(productModel.name),
          subtitle: Text('\$ ${productModel.price.toStringAsFixed(2)}'),
        );
  }
}