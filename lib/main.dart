import 'package:flutter/material.dart';
import 'package:fast_talk/screens/welcome_screen.dart';
import 'package:fast_talk/screens/login_screen.dart';
import 'package:fast_talk/screens/registration_screen.dart';
import 'package:fast_talk/screens/chat_screen.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
