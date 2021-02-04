import 'package:super_rugby_fantasy/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:super_rugby_fantasy/injection.dart';
import 'package:super_rugby_fantasy/presentation/authenticate/register/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// This is the register UI
class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: BlocProvider(
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
                      "SIGN UP",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
              RegisterForm(),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
