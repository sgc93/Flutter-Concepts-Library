import 'package:flutter/material.dart';
import 'package:flutter_concepts/login_form/components/buttons.dart';
import 'package:flutter_concepts/login_form/mixins/validate_mixin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with ValidateMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                _horizontalSpacer(50),
                _logoImage(),
                _horizontalSpacer(50),
                _wellcomeText(),
                _horizontalSpacer(10),
                _loginForm(),
                _horizontalSpacer(25),
                _resetPassword(),
                _horizontalSpacer(25),
                _sighInButton(deviceWidth),
                _horizontalSpacer(50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Or continue with'),
                  ],
                ),
                _horizontalSpacer(50),
                _socialMediaLink(),
                _horizontalSpacer(50),
                _registerButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _horizontalSpacer(double height) {
    return SizedBox(height: height);
  }

  Widget _logoImage() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: _boxShadow(),
      child: ClipOval(
        child: Image.asset(
          'assets/images/codeSpoon.png',
          height: 100,
        ),
      ),
    );
  }

  _boxShadow() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade400,
          offset: const Offset(5, 5),
          blurRadius: 8,
        ),
        const BoxShadow(
          color: Colors.white,
          offset: Offset(-5, -5),
          blurRadius: 8,
        )
      ],
    );
  }

  Widget _wellcomeText() {
    return Text(
      'Come Back, Keep in touch!',
      style: TextStyle(
        color: Colors.grey[700],
        fontSize: 16,
      ),
    );
  }

  Widget _loginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _emailField(),
          _horizontalSpacer(20),
          _passwordField(),
        ],
      ),
    );
  }

  Widget _resetPassword() {
    return Padding(
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
    );
  }

  Widget _sighInButton(double deviceWidth) {
    return Container(
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
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            _formKey.currentState!.reset();
          }
        },
        child: const Text(
          'SignIn',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _socialMediaLink() {
    return Row(
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
    );
  }

  Widget _registerButton() {
    return Row(
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
    );
  }

  _inputDecoration(String labelText, String hintText) {
    return InputDecoration(
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey.shade400,
        ),
      ),
      fillColor: Colors.grey.shade200,
      filled: true,
      hintText: hintText,
      labelText: labelText,
    );
  }

  Widget _emailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        obscureText: false,
        decoration: _inputDecoration('Email', 'Email'),
        validator: validateEmailField,
        onSaved: (newValue) {
          print(newValue);
        },
      ),
    );
  }

  Widget _passwordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        obscureText: true,
        decoration: _inputDecoration('Password', 'Password'),
        validator: validatePasswordField,
        onSaved: (newValue) {
          print(newValue);
        },
      ),
    );
  }
}
