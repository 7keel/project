import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewslineScreen extends StatelessWidget {
  final List<String> evenst = [
    "event 1",
    "event 2",
    "event 3",
    "event 4",
    "event 5",
    "event 6",
    "event 7",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "lineScreen",
      home: Scaffold(
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      fit: BoxFit.cover,
                      "assets/images/chad-montano-MqT0asuoIcU-unsplash 1.png",
                    ),
                    Column(
                      children: [Text("Esentai Mall")],
                    )
                  ],
                ),
              ),
            );
          },
        ),
        // body: ListView(
        //     physics: BouncingScrollPhysics(),
        //     children: evenst
        //         .map((e) => Image.asset(
        //             "assets/images/chad-montano-MqT0asuoIcU-unsplash 1.png"))
        //         .toList()),
        backgroundColor: Colors.white60,
      ),
    );
  }
}
