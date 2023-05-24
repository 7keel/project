import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/src/profile/profile_screen.dart';
import 'package:flutter_application_1/src/router/router.dart';
import 'package:flutter_application_1/src/screens/auth/auth_screen.dart';
import 'package:flutter_application_1/src/screens/auth/register_screen.dart';
import 'package:flutter_application_1/src/screens/newsline/newsline_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.gift)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          onGenerateRoute: AppRouter.generateRoute,
          builder: (context) {
            switch (index) {
              case 0:
                return AuthScreen();
              case 1:
                return NewslineScreen();
              case 2:
                return ProfileScreen();
              case 3:
                return RegisterScreen();
              default:
                return RegisterScreen();
            }
          },
        );
      },
    );
  }
}
