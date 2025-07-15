import 'package:flutter/material.dart';

class StationItem extends StatelessWidget {
  const StationItem(this.name, {super.key});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context, name);
        },
        child: Text(
          name,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
