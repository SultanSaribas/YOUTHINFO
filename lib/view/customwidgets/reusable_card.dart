import 'package:flutter/material.dart';

const myTextStyle = TextStyle(
  color: Color(0xFFFFFFFF),
  fontSize: 22.0,
);

class ReusableCard extends StatelessWidget {
  const ReusableCard({required this.title, required this.onPress});

  final Function() onPress;
  final Text title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.redAccent,
        child: SizedBox(
          height: 100.0,
          width: double.infinity,
          child: Center(
            child: ListTile(
              title: title,
              onTap: onPress,
            ),
          ),
        ),
      ),
    );
  }
}
