import 'package:firebase_core/firebase_core.dart';
import 'package:flash_app/login_screen.dart';
import 'package:flash_app/registration_screen.dart';
import 'package:flash_app/welcome_screen.dart';
import 'package:flutter/material.dart';
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
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: Colors.black54
          )
        )
      ),
      title: 'Material App',
      home: WelcomeScreen(),
      initialRoute: 'welcome_screen',
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) =>  const RegistrationScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },

      onUnknownRoute: (RouteSettings settings)
      {
        return MaterialPageRoute(settings: settings, builder: (BuildContext context) => const ErrorPage() ) ;
      },
    );
  }
}

class ChatScreen {
}


class ErrorPage extends StatelessWidget {
  const ErrorPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("404 Not Found");
  }
}
