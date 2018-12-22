import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager({this.startingProduct = 'Sweets Tester'}) {
    print('Product Manager Widget Construct');
  }
  @override
  State<StatefulWidget> createState() {
    print('Product Manager createState');
    return _ProductManagerState();
    //return _ProductManagerState(startingProduct);
  }
}

class _ProductManagerState extends State<ProductManager> {
  int _cnt = 1;
  final List<String> _products = [];
  // _ProductManagerState(String startingProduct) {
  //   _products.add(startingProduct);
  // }

  _ProductManagerState() {
    print('Product Manager State Widget Construct');
  }

  @override
  void initState() {
    //we don't neeed setState
    print('initState');
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print(_products);
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product) {
    setState(() {
      print('setState');
      _cnt++;
      _products.add('$product$_cnt');
      print(_products);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          child: ProductControl(_addProduct),
        ),
        Products(_products),
      ],
    );
  }
}
