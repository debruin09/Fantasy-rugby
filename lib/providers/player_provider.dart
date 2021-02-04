// import 'dart:convert';

// import 'package:super_rugby_fantasy/models/player.dart';
// import 'package:flutter/material.dart';

// class PlayerProvider extends ChangeNotifier {
//   bool _selected = false;
//   String _position = "PR";
//   bool _loading = false;
//   List<dynamic> _players;

//   String _jsonString = "";

//   set selected(select) {
//     _selected = select;
//     notifyListeners();
//   }

//   set position(String pos) {
//     _position = pos;
//     notifyListeners();
//   }

//   bool get selected => _selected;
//   String get position => _position;
//   bool get loading => _loading;

//   Future<void> loadJsonData({BuildContext context}) async {
//     try {
//       _loading = true;
//       notifyListeners();

//       _jsonString = await DefaultAssetBundle.of(context)
//           .loadString("assets/json/players.json");

//       _loading = false;
//       notifyListeners(); // Notify listeners if data is loaded

//     } catch (e) {
//       print(e);
//     }
//   }

//   Map<String, dynamic> toMap(Player player) {
//     try {
//       dynamic myPlayer = _players.map((player) => player);
//       if (player != null) {
//         print("My Player ${myPlayer.price}");
//         return {
//           "id": player.id ?? myPlayer["id"],
//           "name": player.name ?? myPlayer["name"],
//           "position": player.position ?? myPlayer["position"],
//           "tries": player.tries ?? myPlayer["tries"],
//           "penalties": player.penalties ?? myPlayer["penalties"],
//           "drop_goals": player.dropGoals ?? myPlayer["drop_goals"],
//           "points": player.points ?? myPlayer["points"],
//           "original_team": player.originalTeam ?? myPlayer["original_team"],
//           "price": player.price ?? myPlayer["price"],
//           "conversions": player.conversions ?? myPlayer["conversions"],
//           "hasYellowCard": player.hasYellowCard ?? myPlayer["hasYellowCard"],
//           "hasRedCard": player.hasRedCard ?? myPlayer["hasRedCard"],
//           "profileImage":
//               player.profileImage ?? "assets/images/placeholder.png",
//           "isCaptain": player.isCaptain ?? myPlayer["isCaptain"],
//         };
//       }
//     } catch (e) {
//       print("Error from player provider toMap $e");
//     }

//     return null;
//   }

//   List<Player> players() {
//     if (_jsonString.isNotEmpty) {
//       List decoded = jsonDecode(_jsonString);
//       _players = decoded
//           .map((player) => Player.fromMap(player))
//           .where((player) => player.position == _position)
//           .toList();
//       return _players;
//     }
//     return null;
//   }
// }
