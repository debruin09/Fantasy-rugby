import 'package:flutter/material.dart';
import 'package:super_rugby_fantasy/domain/team/player.dart';
import 'package:super_rugby_fantasy/presentation/core/constants.dart';

class PlayerProfilePage extends StatelessWidget {
  final Player player;
  PlayerProfilePage({@required this.player});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(title: Text("Profile")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const SizedBox(height: 10.0),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 200.0,
              child: Hero(
                tag: "player${player.id}",
                child: Image.asset(
                  "assets/images/placeholder.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Divider(color: Colors.white54),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Name: ${player.name}",
                    style: textTheme,
                  ),
                  Text(
                    "Price: \$${player.price}",
                    style: textTheme,
                  ),
                  Text(
                    "Team: ${player.originalTeam}",
                    style: textTheme,
                  ),
                  Text(
                    "Position: ${player.position}",
                    style: textTheme,
                  ),
                  Text(
                    "Points: ${player.points}",
                    style: textTheme,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
