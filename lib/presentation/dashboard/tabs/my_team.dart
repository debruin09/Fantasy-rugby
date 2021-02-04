import 'package:super_rugby_fantasy/presentation/dashboard/widgets/tab_widgets/position_widget.dart';
import 'package:super_rugby_fantasy/presentation/dashboard/widgets/wrap_widgets.dart';
import 'package:flutter/material.dart';
import 'package:super_rugby_fantasy/presentation/post_registration/misc/test_data.dart';

class MyTeamTab extends StatelessWidget {
  const MyTeamTab();
  @override
  Widget build(BuildContext context) {
    final reservePlayers =
        playersData.where((player) => !player.selected).toList();

    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Column(
              children: [
                PlayersWidget(),
                const SizedBox(height: 10.0),
                Text("Reserves",
                    style: TextStyle(color: Colors.white, fontSize: 23.0)),
                const SizedBox(height: 10.0),
                ReservePlayers(
                    players: reservePlayers,
                    showPlayerDialog: showPlayerDialog),
              ],
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.white,
              elevation: 10.0,
              child: Text(
                "Bench Boost",
                style: TextStyle(
                    color: Colors.lightBlue, fontWeight: FontWeight.bold),
              ),
            ),
            RaisedButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.white,
              elevation: 10.0,
              child: Text(
                "Triple Captain",
                style: TextStyle(
                    color: Colors.lightBlue, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}
