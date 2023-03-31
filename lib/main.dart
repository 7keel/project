import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        primaryColor: Colors.green,
      ),
      home: const Page(title: 'salam', text: 'ualeykum'),
    );
  }
}

class Page extends StatefulWidget {
  const Page({super.key, required this.title, required this.text});

  final String title;
  final String text;

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              "${widget.text}",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "$counter",
            ),
            CupertinoButton(
              child: Text("Кнопк"),
              onPressed: () {
                print("Hello World");
                setState(() {
                  counter++;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
