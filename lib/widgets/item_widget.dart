import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Image.network(
              item.image,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "${item.name}                \*${item.price}",
            textScaleFactor: 1.5,
            style: TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
