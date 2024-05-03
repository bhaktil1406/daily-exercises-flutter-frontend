import 'package:daily_exercises/screens/detailpage.dart';
import 'package:flutter/material.dart';

class categooryCard extends StatelessWidget {
  const categooryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 10,
              spreadRadius: -23,
              color: Colors.black),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return detailpage();
            }));
          },
          child: Column(
            children: [
              Spacer(),
              Image(
                image: NetworkImage(
                    "https://img.freepik.com/free-vector/flat-hand-drawn-dance-fitness-steps-illustration_23-2148854674.jpg?size=626&ext=jpg&ga=GA1.1.1228072737.1713949831&semt=ais"),
                width: 100,
              ),
              Spacer(),
              Text(
                "Dite Recommendation",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
