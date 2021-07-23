import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:storyboard/pages/home_page.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({ Key key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   Future<String> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(Duration(seconds: 2)).then((_) {
      return null;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLogin(
          title: 'Demo Page',
          onLogin: _authUser,
          onSignup: _authUser,
          onSubmitAnimationCompleted: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MyHomePage(
              ),
            ));
          },
          onRecoverPassword: (String) {},
        )
    );
  }
}