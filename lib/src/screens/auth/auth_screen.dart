import 'package:flutter/cupertino.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Авторизация"),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CupertinoTextField(
              placeholder: "Логин или Почта",
            ),
            CupertinoTextField(
              placeholder: "Пороль",
            ),
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
