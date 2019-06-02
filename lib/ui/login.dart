import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ramdemo/bloc/bloc.dart';
import 'package:ramdemo/bloc/state.dart';
import 'package:ramdemo/ui/loading_indicator.dart';
import 'package:ramdemo/ui/login_form.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    LoginBloc _loginBloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Login'),
      ),
      body: BlocBuilder(
          bloc: _loginBloc,
          builder: (context, state) {
            if (state is LoginStateDefault) {
             
            }
            if (state is LoginStateSuccess) {
              return Text("Success");
            }
            if (state is LoginStateError) {
              return Text("Error");
            }
            if (state is LoginStateLoading) {
              return LoadingIndicator();
            }
             return Center(
                  child: LoginForm(
                loginbloc: _loginBloc,
              ));
          }),
    );
  }
}