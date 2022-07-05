// ignore_for_file: must_be_immutable, non_constant_identifier_names, use_function_type_syntax_for_parameters, use_key_in_widget_constructors

import 'package:flutter/material.dart';

final products = List<String>.generate(30, (i) {
  return 'Product No is $i';
});
List<String> selectedItem = [];

class ProductList extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final products;
  const ProductList(this.products, this.OnCart);

  final ValueSetter<int> OnCart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Prduct List',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        backgroundColor: Colors.pink,
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(products[index]),
              onTap: () {
                OnCart(index);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Product No $index is Added",
                        style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 30))));
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              thickness: 25,
              color: Colors.pink,
            );
          },
          itemCount: products.length),
    );
  }
}
