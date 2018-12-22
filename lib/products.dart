import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products([this.products = const []]) {
    print('Product Widget Construct');
  }
  @override
  Widget build(BuildContext context) {
    print('Product build');
    return Column(
      children: products
          .map((el) => Card(
                color: Theme.of(context).primaryColor,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/001.jpg'),
                    Text(el),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
