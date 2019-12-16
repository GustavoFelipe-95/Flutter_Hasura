import 'package:flutter/material.dart';
import 'package:flutter_hasura/app/login/login/login_module.dart';

import 'login_bloc.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final bloc = LoginModule.to.bloc<LoginBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: bloc.controller,
              decoration: InputDecoration(labelText: "NickName"),
            ),
            RaisedButton(
              child: Text("Acessar"),
              onPressed: (){
                bloc.login();
              },
            ),
          ],
        ),
      ),
    );
  }
}