import 'package:auto_route/auto_route.dart';
import 'package:super_rugby_fantasy/application/auth/auth_bloc.dart';
import 'package:super_rugby_fantasy/presentation/routes/router.gr.dart';
import 'package:super_rugby_fantasy/presentation/splash/widgets/custome_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (success) =>
              ExtendedNavigator.root.replace(Routes.dashboardPage),
          unauthenticated: (_) =>
              ExtendedNavigator.root.replace(Routes.loginScreen),
        );
      },
      child: _SplashScreen(),
    );
  }
}

class _SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.lightBlueAccent[400],
                Colors.lightBlue[600],
                Colors.blue[800]
              ]),
        ),
        child: Stack(children: <Widget>[
          ClipPath(
            clipper: Clipper(),
            child: Image.asset(
              'assets/images/marvel.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 140.0),
                  Container(
                    height: 250.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Text(
                    "FANTASY LEAGUE",
                    style: TextStyle(color: Colors.white54, fontSize: 40.0),
                  ),
                  SizedBox(height: 15.0),
                  CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}
