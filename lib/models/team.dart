// import 'package:super_rugby_fantasy/models/player.dart';

// class Team {
//   String name;
//   List<Player> players = [];
//   String teamJersey;
//   int totalPoints = 0;
//   int budget = 10000;
//   bool selected = true;

//   Team({this.name, this.players, this.teamJersey, this.budget});

//   int calculateTotalPoints({List<Player> team}) {
//     totalPoints = 0;
//     for (int i = 0; i < team.length; i++) {
//       totalPoints = totalPoints + team[i].points;
//     }
//     return totalPoints;
//   }

//   void addPlayersToTeam(Player player) {
//     try {
//       if (players.contains(player) == true) {
//       } else {
//         players.add(player);
//       }
//     } catch (e) {
//       print("Error when adding player: $e");
//     }
//   }
// }
