import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Sandwich Shop App',
    home: Scaffold(
      appBar: AppBar(title: const Text('Sandwich Counter')),
  body: Center(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              OrderItemDisplay(1, 'Footlong'),
              SizedBox(height: 8.0),
              OrderItemDisplay(2, 'BLT'),
              SizedBox(height: 8.0),
              OrderItemDisplay(3, 'Club'),
            ],
          ),
        ),
      ),
    ),
  );
}
}

class OrderItemDisplay extends StatelessWidget {
  final String itemType;
  final int quantity;

  const OrderItemDisplay(this.quantity, this.itemType, {super.key});

  @override
Widget build(BuildContext context) {
  return Container(
    width: 200.0,
    height: 100.0,
    color: Colors.red,
    alignment: Alignment.center,
    child: Text(
      '$quantity $itemType sandwich(es): ${'🥪' * quantity}'
    ),
  );
}
}
