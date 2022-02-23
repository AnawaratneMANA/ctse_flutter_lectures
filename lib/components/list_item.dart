import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String content;
  final Color color;
  const ListItem({Key? key , required this.content, required this.color} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children:  [
          Icon(Icons.warehouse),

          // Set Padding.
          SizedBox(
            width: 10,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(content, style: TextStyle(color: color)),
          ),
        ],
      ),
    );
  }
}
