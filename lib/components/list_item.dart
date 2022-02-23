import 'package:flutter/material.dart';
import 'package:lab2/components/color_management.dart';

class ListItem extends StatelessWidget {
  final String content;
  const ListItem({Key? key , required this.content} ) : super(key: key);

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
            child: Text(content, style: TextStyle(color: Theme.of(context).primaryColor),),
          ),
        ],
      ),
    );
  }
}
