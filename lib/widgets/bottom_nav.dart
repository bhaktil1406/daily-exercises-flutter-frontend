import 'package:flutter/material.dart';

class bottomnav extends StatelessWidget {
  final String title;
  final Icon iconn;
  final bool isActive;
  const bottomnav({
    required this.title,
    required this.iconn,
    this.isActive = false,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          iconn,
          Text(
            title,
            style: TextStyle(
                color: isActive
                    ? Color.fromARGB(255, 231, 110, 50)
                    : Color.fromARGB(255, 32, 32, 32)),
          )
        ],
      ),
    );
  }
}
