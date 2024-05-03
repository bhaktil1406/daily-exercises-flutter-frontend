import 'package:daily_exercises/widgets/bottom_nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class detailpage extends StatelessWidget {
  const detailpage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 70,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottomnav(
              iconn: Icon(Icons.calendar_month_outlined),
              title: "today",
              isActive: false,
            ),
            bottomnav(
              iconn: Icon(Icons.directions_walk_outlined),
              title: "gole",
              isActive: true,
            ),
            bottomnav(
              iconn: Icon(Icons.settings),
              title: "setting",
              isActive: false,
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 208, 176, 243),
              // image: DecorationImage(
              //     image: NetworkImage(
              //         "https://img.freepik.com/free-vector/flat-hand-drawn-dance-fitness-steps-illustration_23-2148854674.jpg?size=626&ext=jpg&ga=GA1.1.1228072737.1713949831&semt=ais"),
              //     ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text(
                    "Meditation",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 35,
                        color: Color.fromRGBO(58, 57, 57, 1),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("3-10 min"),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    // width: size.width * .7,
                    child: Text(
                        "hi my name is bhaktil a and i am a yoga teacher.do yoda gor good health and your day spent well after doing yoda every 10 min a day."),
                  ),
                  SizedBox(
                    width: size.width * .7,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 30),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(29.5)),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search",
                            icon: Icon(Icons.search_sharp),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      sessionc(
                        num: 01,
                        isActive: true,
                      ),
                      sessionc(
                        num: 02,
                      ),
                      sessionc(
                        num: 03,
                      ),
                      sessionc(
                        num: 04,
                      ),
                      sessionc(
                        num: 05,
                      ),
                      sessionc(
                        num: 06,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class sessionc extends StatelessWidget {
  final int num;
  final bool isActive;
  const sessionc({
    this.isActive = false,
    required this.num,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 - 10,
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 244, 244, 244),
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 17),
                    blurRadius: 25,
                    spreadRadius: -15,
                    color: const Color.fromARGB(255, 156, 154, 154)),
              ]),
          child: Material(
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                          color: isActive
                              ? Color.fromARGB(255, 209, 134, 222)
                              : const Color.fromARGB(255, 118, 116, 116),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Session 0$num",
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
