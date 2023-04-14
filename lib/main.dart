import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/src/screens/auth/auth_screen.dart';
import 'package:flutter_application_1/src/screens/auth/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      routes: {
        '/auth/login': (context) => AuthScreen(),
        '/auth/register': (context) => RegisterScreen(),
      },
      title: 'Flutter Demo',
      home: const AuthScreen(),
    );
  }
}
