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
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "lineScreen",
      home: Scaffold(
        body: Stack(
          children: [
            ListView.builder(
              padding: EdgeInsets.only(top: 80),
              physics: BouncingScrollPhysics(),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          fit: BoxFit.fitWidth,
                          "assets/images/chad-montano-MqT0asuoIcU-unsplash 1.png",
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Container(
             
              
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                child: TextField(
                  decoration: InputDecoration(
              prefixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: (){
                }
              ),
                    hintText: "Поиск",
                    filled: true,
                    fillColor: Colors.white.withAlpha(235),
                    border: OutlineInputBorder(),
                    ) ,
                ),
              ),
            ),
          ],
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
