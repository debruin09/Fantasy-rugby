import 'package:flutter/material.dart';
import 'package:super_rugby_fantasy/domain/team/player.dart';
import 'package:super_rugby_fantasy/presentation/dashboard/widgets/tab_widgets/player_display_widget.dart';

class TeamCentres extends StatelessWidget {
  final List<Player> players;
  final Function showPlayerDialog;
  TeamCentres({@required this.players, @required this.showPlayerDialog});
  @override
  Widget build(BuildContext context) {
    return PlayerDisplayWidget(
        players: players, showPlayerDialog: showPlayerDialog);
  }
}

class FlyHalfAndScrumHalf extends StatelessWidget {
  final List<Player> players;
  final Function showPlayerDialog;
  FlyHalfAndScrumHalf(
      {@required this.players, @required this.showPlayerDialog});
  @override
  Widget build(BuildContext context) {
    return PlayerDisplayWidget(
        players: players, showPlayerDialog: showPlayerDialog);
  }
}

class EightAndFlanks extends StatelessWidget {
  final List<Player> players;
  final Function showPlayerDialog;
  EightAndFlanks({@required this.players, @required this.showPlayerDialog});
  @override
  Widget build(BuildContext context) {
    return PlayerDisplayWidget(
        players: players, showPlayerDialog: showPlayerDialog);
  }
}

class SecondRows extends StatelessWidget {
  final List<Player> players;
  final Function showPlayerDialog;
  SecondRows({@required this.players, @required this.showPlayerDialog});
  @override
  Widget build(BuildContext context) {
    return PlayerDisplayWidget(
        players: players, showPlayerDialog: showPlayerDialog);
  }
}

class FrontThree extends StatelessWidget {
  final List<Player> players;
  final Function showPlayerDialog;
  FrontThree({@required this.players, @required this.showPlayerDialog});
  @override
  Widget build(BuildContext context) {
    return PlayerDisplayWidget(
        players: players, showPlayerDialog: showPlayerDialog);
  }
}

class ReservePlayers extends StatelessWidget {
  final List<Player> players;
  final Function showPlayerDialog;
  ReservePlayers({@required this.players, @required this.showPlayerDialog});
  @override
  Widget build(BuildContext context) {
    return PlayerDisplayWidget(
        players: players, showPlayerDialog: showPlayerDialog);
  }
}

class FullbackAndWings extends StatelessWidget {
  final List<Player> players;
  final Function showPlayerDialog;
  FullbackAndWings({@required this.players, @required this.showPlayerDialog});
  @override
  Widget build(BuildContext context) {
    return PlayerDisplayWidget(
        players: players, showPlayerDialog: showPlayerDialog);
  }
}
