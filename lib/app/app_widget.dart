import 'package:flutter_hasura/app/app_bloc.dart';
import 'package:flutter_hasura/app/app_module.dart';
import 'package:flutter_hasura/app/login/login/login_module.dart';
import 'package:flutter_hasura/app/modules/home/home_module.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = AppModule.to.bloc<AppBloc>();
    return MaterialApp(
      title: 'Flutter Slidy Structure',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StreamBuilder(
        stream: bloc.userController,
        builder: (context, snapshot) {
          return snapshot.hasData ? HomeModule() : LoginModule();
        },
      ),
    );
  }
}