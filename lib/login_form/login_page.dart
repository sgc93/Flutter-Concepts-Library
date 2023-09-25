import 'package:flutter/material.dart';
import 'package:flutter_concepts/login_form/components/buttons.dart';
import 'package:flutter_concepts/login_form/components/fields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _textController = TextEditingController();
  final _passwordController = TextEditingController();

  final _emailKeyboard = TextInputType.emailAddress;
  final _passwordKeyboard = TextInputType.text;

  final IconData _emailIcon = Icons.email;
  final IconData _passwordIcon = Icons.lock_open;

  final String _googleImgPath = 'assets/images/google.png';
  final String _githubImgPath = 'assets/images/github.png';
  final String _linkedInImgPath = 'assets/images/linkedIn.png';

  @override
  Widget build(BuildContext context) {
    late double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              const SizedBox(height: 50),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              // some kind of text
              const SizedBox(height: 50),
              Text(
                'Come Back, Keep in touch!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),

              // username field
              Field(
                controller: _textController,
                hintText: 'Email',
                obscureText: false,
                keyboardType: _emailKeyboard,
                iconData: _emailIcon,
              ),
              // password field
              const SizedBox(height: 15),
              Field(
                controller: _passwordController,
                hintText: 'Password',
                obscureText: true,
                keyboardType: _passwordKeyboard,
                iconData: _passwordIcon,
              ),
              // forget password?
              const SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),

              // sign in btn
              const SizedBox(height: 25),
              Container(
                width: deviceWidth,
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.black,
                    ),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.all(20),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'SignIn',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              // or continue with

              const SizedBox(height: 50),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Or continue with'),
                ],
              ),

              const SizedBox(height: 50),

              // google + github + linkedIn icon as a button

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    imagePath: _googleImgPath,
                  ),
                  Button(
                    imagePath: _githubImgPath,
                  ),
                  Button(
                    imagePath: _linkedInImgPath,
                  ),
                ],
              ),

              // not a member? register now
              const SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    'Not a member?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
