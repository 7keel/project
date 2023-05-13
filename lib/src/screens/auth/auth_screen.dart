import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/src/common/constanst/color_constants.dart';
import 'package:flutter_application_1/src/common/constanst/padding_constants.dart';
import 'package:flutter_application_1/src/router/routing_const.dart';
import 'package:flutter_application_1/src/screens/auth/register_screen.dart';

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
              padding: AppPaddings.horizontal,
              child: CupertinoButton(
                color: AppColors.main,
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: const Text("Войти",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.pushNamed(context, MainRoute);
                },
              ),
            ),
            const SizedBox(height: 19),
            Padding(
              padding: AppPaddings.horizontal,
              child: CupertinoButton(
                color: AppColors.main,
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: const Text(
                  "Зарегестрироваться",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, RegisterRoute);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
