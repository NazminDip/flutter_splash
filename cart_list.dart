// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CartList extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables

  // ignore: prefer_typing_uninitialized_variables
  final selectedItem;
  // ignore: use_key_in_widget_constructors
  const CartList(this.selectedItem);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart List',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        backgroundColor: Colors.pink,
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(selectedItem[index]),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              thickness: 25,
              color: Colors.purpleAccent,
            );
          },
          itemCount: selectedItem.length),
    );
  }
}
