import 'package:flash_app/components/rounded_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenScreenState();
}

InputDecoration textInputDecoration = const InputDecoration(
  hintText: "Introduce your text",
  hintStyle: TextStyle(color: Colors.grey),
  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
  ),
);

class _LoginScreenScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Hero(
              tag: 'logo',
              child: Container(
                  child: Image.asset(
                    'images/rayo2.png',
                    height: 200,
                  )),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: textInputDecoration,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: textInputDecoration.copyWith(hintText: "Password"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            buildButton(
                text: 'Login', color: Colors.blue, onPressed: () => {}),
          ],
        ),
      ),
    );
  }
}
