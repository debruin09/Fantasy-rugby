import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:super_rugby_fantasy/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:super_rugby_fantasy/injection.dart';
import 'package:super_rugby_fantasy/presentation/authenticate/login/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_rugby_fantasy/presentation/routes/router.gr.dart';

/// Login Screen UI
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: BlocProvider<SignInFormBloc>(
        create: (context) => locator.get<SignInFormBloc>(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 250.0,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/winners.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 250.0,
                    width: width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black45,
                            Colors.black45,
                            Colors.black,
                          ]),
                    ),
                  ),
                  Positioned(
                    top: 190.0,
                    left: 20.0,
                    child: Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
              LoginForm(),
              const SizedBox(height: 10.0),
              RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: Colors.black, fontSize: 14.0),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Register',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16.0),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            ExtendedNavigator.root
                                .replace(Routes.registerScreen);
                          }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
