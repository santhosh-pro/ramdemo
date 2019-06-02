import 'package:flutter/material.dart';
import 'package:ramdemo/bloc/bloc.dart';
import 'package:ramdemo/bloc/event.dart';

class LoginForm extends StatefulWidget {

   LoginForm({Key key, this.loginbloc}) : super(key: key);
    final LoginBloc loginbloc;

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

 

  String username;
  String password;
    final formKey = GlobalKey<FormState>();

  _login() {
     final form = formKey.currentState;

    // if (form.validate()) {
      form.save();
      setState(() {
      this.widget.loginbloc.dispatch(LoginButtonPressedEvent(
          username: this.username, password: this.password));
    });
    // }
   
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Form(
                      key: formKey,
                      child: Container(
                        padding: const EdgeInsets.all(0.0),
                        width: 300.0,
                        height: 300.0,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Username",
                              ),
                              validator: (val) => !val.contains('@')
                                  ? 'Not a valid email.'
                                  : null,
                              onSaved: (val) => username = val,
                            ),
                            TextFormField(
                              onSaved: (val) => {password = val},
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                              ),
                               validator: (val) => !val.contains('@')
                                  ? 'Not a valid email.'
                                  : null,
                            ),
                            RaisedButton(
                              onPressed: _login,
                              child: Text('Login'),
                              color: Colors.blue,
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                      )),
    );
  }
}