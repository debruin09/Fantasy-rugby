import 'package:flutter/material.dart';
import 'package:super_rugby_fantasy/domain/team/player.dart';
import 'package:super_rugby_fantasy/presentation/dashboard/widgets/tab_widgets/position_widget.dart';
import 'package:super_rugby_fantasy/presentation/post_registration/misc/test_data.dart';
import 'package:super_rugby_fantasy/presentation/post_registration/player_profile_page.dart';

class PlayersWidget extends StatelessWidget {
  const PlayersWidget();
  @override
  Widget build(BuildContext context) {
    final fullbackPlayers = playersData
        .where((player) =>
            (player.position == "FB" || player.position == "WG") &&
            player.selected)
        .toList();
    final teamcentres = playersData
        .where((player) => player.position == "CT" && player.selected)
        .toList();
    final flyAndScrumHalf = playersData
        .where((player) =>
            (player.position == "FH" || player.position == "SH") &&
            player.selected)
        .toList();
    final eightAndFlanks = playersData
        .where((player) =>
            (player.position == "8TH" || player.position == "FL") &&
            player.selected)
        .toList();
    final secondRows = playersData
        .where((player) => player.position == "SR" && player.selected)
        .toList();
    final frontThree = playersData
        .where((player) =>
            (player.position == "PR" || player.position == "HK") &&
            player.selected)
        .toList();

    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: Column(
          children: [
            FullbackAndWings(
                players: fullbackPlayers, showPlayerDialog: showPlayerDialog),
            TeamCentres(
                players: teamcentres, showPlayerDialog: showPlayerDialog),
            FlyHalfAndScrumHalf(
                players: flyAndScrumHalf, showPlayerDialog: showPlayerDialog),
            EightAndFlanks(
                players: eightAndFlanks, showPlayerDialog: showPlayerDialog),
            SecondRows(players: secondRows, showPlayerDialog: showPlayerDialog),
            FrontThree(players: frontThree, showPlayerDialog: showPlayerDialog),
            const SizedBox(height: 10.0),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> showPlayerDialog(context, Player player) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/placeholder.png"),
                ),
                Text(
                  player.name,
                  style: TextStyle(color: Colors.white),
                )
              ]),
          actions: <Widget>[
            FlatButton(
              color: Colors.lightBlueAccent[700],
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlayerProfilePage(player: player),
                  ),
                );
              },
              child: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
            ),
            FlatButton(
              color: Colors.lightBlueAccent[700],
              onPressed: () {},
              child: Text(
                "Make Me Captain",
                style: TextStyle(color: Colors.white),
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Close",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
          backgroundColor: Colors.lightBlue,
        );
      });
}
