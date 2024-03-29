import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hasura/app/app_module.dart';
import 'package:flutter_hasura/app/login/login/login_bloc.dart';
import 'package:flutter_hasura/app/login/login/login_page.dart';
import '../../app_repository.dart';

class LoginModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
    Bloc((i) => LoginBloc(AppModule.to.get<AppRepository>())),
  ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => LoginPage();

  static Inject get to => Inject<LoginModule>.of();
}