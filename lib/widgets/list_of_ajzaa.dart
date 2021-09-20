import 'package:flutter/material.dart';

class Ajzaa extends StatefulWidget {
  const Ajzaa({Key key}) : super(key: key);

  @override
  _AjzaaState createState() => _AjzaaState();
}

class _AjzaaState extends State<Ajzaa> {
  final items = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(items[index]),
            ),
          );
        });
  }
}
