import 'package:flash_app/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  static const String id = 'registration_screen';

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
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

class _RegistrationScreenState extends State<RegistrationScreen> {

  final _auth = FirebaseAuth.instance;
  var email;
  var password;

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
              textAlign: TextAlign.center,
              onChanged: (values) {
                  email = values;
              }  ,
              decoration: textInputDecoration,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (values) {
                password = values;
              } ,
              decoration: textInputDecoration.copyWith(hintText: "Password"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            buildButton(
                label: 'Register', bgColor: Colors.blue, action:  () async{
                  
                  //Implementar funcionamiento de inicio de sesion
              
              
                final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);
                if(newUser != null) { Navigator.pushNamed(context, 'welcome_screen');}
                
                }),
          ],
        ),
      ),
    );
  }
}
