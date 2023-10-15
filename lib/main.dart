import 'package:flash_app/chat_screen.dart';
import 'package:flash_app/login_screen.dart';
import 'package:flash_app/registration_screen.dart';
import 'package:flash_app/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(
            bodyLarge: TextStyle(color: Colors.black54),
          ),
        ),
        title: 'Flash Chat',
        // home: WelcomeScreen(),
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          ChatScreen.id: (context) => const ChatScreen(),
        });
  }
}
