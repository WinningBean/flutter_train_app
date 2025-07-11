import 'package:flutter/material.dart';

class StationsBox extends StatelessWidget {
  const StationsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              choiceStation('출발역', null),
              SizedBox(
                width: 2,
                height: 50,
                child: VerticalDivider(thickness: 2, color: Colors.grey[400]),
              ),
              choiceStation('도착역', null),
            ],
          ),
        ),
      ),
    );
  }

  Widget choiceStation(String choice, String? station) {
    return Column(
      children: [
        Text(
          choice,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(station ?? '선택', style: TextStyle(fontSize: 40)),
      ],
    );
  }
}
