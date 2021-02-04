import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_rugby_fantasy/application/auth/auth_bloc.dart';
import 'package:super_rugby_fantasy/presentation/dashboard/tabs/my_team.dart';
import 'package:super_rugby_fantasy/presentation/dashboard/tabs/points.dart';
import 'package:super_rugby_fantasy/presentation/dashboard/widgets/rugbyfield.dart';
import 'package:flutter/material.dart';
import 'package:super_rugby_fantasy/presentation/dashboard/tabs/transfer.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.lightBlueAccent,
              centerTitle: true,
              floating: false,
              pinned: true,
              actions: <Widget>[
                FlatButton.icon(
                  onPressed: () async {
                    context.read<AuthBloc>().add(const AuthEvent.signedOut());
                  },
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.white,
                  ),
                  label: Text(
                    "Sign Out",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "BalooThambi2"),
                  ),
                )
              ],
              titleSpacing: 2.0,
              expandedHeight: 150.0,
              bottom: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white60,
                  tabs: [
                    Tab(child: Text("My Team")),
                    Tab(child: Text("Points")),
                    Tab(child: Text("Transfers"))
                  ]),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Die Agge",
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Stack(
                  children: <Widget>[
                    Opacity(
                      opacity: 0.2,
                      child: Image.asset("assets/images/waratahs wallpaper.jpg",
                          fit: BoxFit.cover),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Transform.rotate(
                        angle: -0.6,
                        child: Image.asset("assets/images/logo2.png"),
                      ),
                    ),
                  ],
                ),
                titlePadding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                centerTitle: true,
                title: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    "100 pts",
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              child: Stack(children: <Widget>[
                const RugbyField(),
                Positioned(
                  child: TabBarView(
                    children: <Widget>[
                      const MyTeamTab(),
                      const PointsTab(),
                      const TransferTab(),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
