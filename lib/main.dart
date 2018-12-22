import 'package:flutter/material.dart';
import './product_manager.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.purple,
        //primaryColor: Colors.deepOrange,
      ),
      title: 'App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('hi'),
        ),
        body: ProductManager(startingProduct: 'Product1'),
      ),
    );
  }
}
