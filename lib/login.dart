import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

Widget loginBuildEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      SizedBox(height: 10),
      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: 335,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black87,
              width: 2.5,
            ),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white.withAlpha(50)
        ),
        child: TextField(
          cursorColor: Colors.white12,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Email',
            hintStyle: TextStyle(color: Colors.white, fontSize: 16),
            border: InputBorder.none,
          ),
        ),
      )
    ],
  );
}

Widget loginBuildPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      const SizedBox(height: 10),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: 335,
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black87,
              width: 2.5
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white.withAlpha(50),
        ),
        child: const TextField(
          cursorColor: Colors.white12,
          style: TextStyle(color: Colors.white),
          decoration:  InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.white, fontSize: 16),
              border: InputBorder.none
          ),
        ),
      )
    ],
  );
}

Widget loginBuildButtonLogin(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
        width: 335,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black87,
        ),
        alignment: Alignment.center,
        child: const Text(
          'Login',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
        ),
      )
    ],
  );
}

Widget loginBuildCreateAccount(){
  return const Align(
    alignment: Alignment.center,
    child: Padding(
      padding: EdgeInsets.only(top: 2),
      child: Text(
        'Create here',
        style: TextStyle(color: Colors.amber,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.black54,
                      Colors.red
                    ]
                )
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 70
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Text(
                      'Welcome\nRemote Film',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 65,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 55),
                  const Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                  ),
                  loginBuildEmail(),
                  loginBuildPassword(),
                  const SizedBox(height: 60),
                  loginBuildButtonLogin(),
                  const SizedBox(height: 15),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                        'Don\'t have an  account?',
                        style: TextStyle(color: Colors.white, fontSize: 14)
                    ),
                  ),
                  const SizedBox(height: 5),
                  loginBuildCreateAccount(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
