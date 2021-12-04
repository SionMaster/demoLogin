import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

Widget registerBuildUserName(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: 335,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black87,
            width: 2.5
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white.withAlpha(50),
        ),
        child: TextField(
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'User name',
            hintStyle: TextStyle(color: Colors.white, fontSize: 16),
            border: InputBorder.none
          ),
        ),
      )
    ],
  );
}

Widget registerBuildEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: 335,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2.5
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white.withAlpha(50)
        ),
        child: TextField(
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'E-mail',
            hintStyle: TextStyle(color: Colors.white, fontSize: 16),
            border: InputBorder.none
          ),
        ),
      )
    ],
  );
}

Widget registerBuildPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: 335,
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.black,
                width: 2.5
            ),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white.withAlpha(50)
        ),
        child: TextField(
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.white, fontSize: 16),
              border: InputBorder.none
          ),
        ),
      )
    ],
  );
}

Widget registerBuildConfirm(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: 335,
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.black,
                width: 2.5
            ),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white.withAlpha(50)
        ),
        child: TextField(
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              hintText: 'Confirm',
              hintStyle: TextStyle(color: Colors.white, fontSize: 16),
              border: InputBorder.none
          ),
        ),
      )
    ],
  );
}

Widget registerBuildButtonCreate(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        width: 335,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black87
        ),
        alignment: Alignment.center,
        child: Text(
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

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.black54,
                  Colors.red,
                ]
              )
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 35,
                vertical: 75
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Create account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 55,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 75),
                  registerBuildUserName(),
                  registerBuildEmail(),
                  registerBuildPassword(),
                  registerBuildConfirm(),
                  SizedBox(height: 50),
                  registerBuildButtonCreate()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
