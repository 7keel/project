import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFFF3F4F6),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: const Border(),
        middle: Text("Регистрация"),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                const SizedBox(height: 32),
                CupertinoTextField(
                    placeholder: "Логин",
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 19, horizontal: 16)),
                Container(
                  height: 1,
                  color: Color(0xFFE0E6ED),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                ),
                CupertinoTextField(
                    placeholder: "Телефон",
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 19, horizontal: 16)),
                Container(
                  height: 1,
                  color: Color(0xFFE0E6ED),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                ),
                CupertinoTextField(
                    placeholder: "Почта",
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 19, horizontal: 16)),
                Container(
                  height: 1,
                  color: Color(0xFFE0E6ED),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                ),
                CupertinoTextField(
                    obscureText: isObscure,
                    suffix: CupertinoButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      child: Icon(
                        CupertinoIcons.eye,
                        color: Colors.black,
                      ),
                    ),
                    placeholder: "Пороль",
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 19, horizontal: 16)),
              ],
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              bottom: 32,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CupertinoButton(
                  color: Color(0xFF4631D2),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: const Text(
                    "Создать аккаунт",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
