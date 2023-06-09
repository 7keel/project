import 'package:flutter/cupertino.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFFF3F4F6),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: const Border(),
        middle: Text("Авторизация"),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CupertinoTextField(
                placeholder: "Логин или Почта",
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 16)),
            Container(
              height: 1,
              color: Color(0xFFE0E6ED),
              margin: EdgeInsets.symmetric(horizontal: 16),
            ),
            CupertinoTextField(
                placeholder: "Пороль",
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 16)),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                color: Color(0xFF4631D2),
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: const Text("Войти",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 19),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                color: Color(0xFF4631D2),
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: const Text(
                  "Зарегестрироваться",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
