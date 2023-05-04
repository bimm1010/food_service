import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/forgetScreen/forgot_screen.dart';
import '../../theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../authenaticator/auth.dart';

class EmailPass extends StatefulWidget {
  const EmailPass({super.key});

  @override
  State<EmailPass> createState() => _EmailPassState();
}

class _EmailPassState extends State<EmailPass> {
  bool showPass = true;
  String? errorMessage = '';
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassWord(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(
        () {
          errorMessage = e.message;
        },
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: TextFormField(
              controller: _controllerEmail,
              decoration: const InputDecoration(
                hintText: 'enter email',
                labelText: 'EMAIL ADDRESS',
                labelStyle: TextStyle(color: kColorTextField),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: kColorPrimaryTheme,
                    width: 2.0,
                  ),
                ),
              ),
              cursorColor: kColorPrimaryTheme,
            ),
          ),
          TextFormField(
            controller: _controllerPassword,
            decoration: InputDecoration(
              labelText: 'PASSWORD',
              hintText: 'enter password',
              labelStyle: const TextStyle(color: kColorTextField),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: kColorPrimaryTheme,
                  width: 2.0,
                ),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    showPass = !showPass;
                  });
                },
                icon: showPass == true
                    ? const Icon(Icons.abc)
                    : const Icon(Icons.remove_red_eye_sharp),
              ),
            ),
            cursorColor: kColorPrimaryTheme,
            obscureText: showPass,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('$ForgotScreen');
              },
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  PrimaryFont.light(10),
                ),
                foregroundColor: MaterialStateProperty.all(kColorPrimaryTheme),
              ),
              child: const Text('Forget Password?'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              signInWithEmailAndPassword();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kColorPrimaryTheme),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              elevation: MaterialStateProperty.all(0),
              fixedSize: MaterialStateProperty.all(
                Size(size.width * 0.95, size.height * 0.060),
              ),
              textStyle: MaterialStateProperty.all(
                PrimaryFont.medium(size.height * 0.018),
              ),
            ),
            child: const Text('SIGN IN'),
          )
        ],
      ),
    );
  }
}
