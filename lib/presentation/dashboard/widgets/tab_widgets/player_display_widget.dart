import 'package:flutter/material.dart';
import 'package:super_rugby_fantasy/domain/team/player.dart';

class PlayerDisplayWidget extends StatelessWidget {
  final List<Player> players;
  final Function showPlayerDialog;

  const PlayerDisplayWidget(
      {Key key, @required this.players, @required this.showPlayerDialog})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: players
          .map(
            (player) => GestureDetector(
              onTap: () => showPlayerDialog(context, player),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    height: 100,
                    width: MediaQuery.of(context).size.width / 3 - 10.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/jerseys/blues jersey.png"),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                  Positioned(
                    top: 70.0,
                    left: 20.0,
                    child: Container(
                      color: Colors.black45,
                      width: 200.0,
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            player.name,
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            player.position,
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  player.isCaptain == true
                      ? Positioned(
                          top: 5.0,
                          right: 10.0,
                          child: Container(
                            height: 25.0,
                            width: 15.0,
                            color: Colors.transparent,
                            child: Text(
                              "C",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
