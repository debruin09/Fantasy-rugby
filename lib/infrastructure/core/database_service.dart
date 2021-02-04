// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:super_rugby_fantasy/domain/auth/user.dart';
// import 'package:super_rugby_fantasy/models/player.dart';
// import 'package:super_rugby_fantasy/repositories/database_repository.dart';

// class DatabaseService extends DatabaseRepository {
//   final CollectionReference teamCollection =
//       FirebaseFirestore.instance.collection("Team");

//   final String uid;

//   DatabaseService({this.uid});

//   // List<Team> _teamFromSnapshot(QuerySnapshot snapshot) {
//   //   return snapshot.documents
//   //       .map((doc) => Team(
//   //             name: doc.data()["team_name"],
//   //             budget: doc.data()["budget"],
//   //             teamJersey: doc.data()["team_jersey"],
//   //             players: doc.data()["players"],
//   //           ))
//   //       .toList();
//   // }

//   User _teamDataFromSnapShot(DocumentSnapshot snapshot) {
//     List<dynamic> players = snapshot.data()["players"];
//     try {
//       return User(
//           id: uid,
//           totalPoints: snapshot.data()["points"],
//           userEmail: snapshot.data()["email"],
//           teamName: snapshot.data()["team_name"],
//           budget: snapshot.data()["budget"] ?? 100000,
//           teamJersey: snapshot.data()["team_jersey"],
//           players: players.map((player) => Player.fromMap(player)).toList());
//     } catch (e) {
//       print("Error from team from snapshot: $e");
//       return null;
//     }
//   }

//   @override
//   Future updateTeamData(
//       {String teamName,
//       List<dynamic> players,
//       String teamJersey,
//       int totalPoints,
//       String userEmail,
//       int budget}) async {
//     return await teamCollection.doc(uid).set({
//       "team_name": teamName,
//       "players": players,
//       "budget": budget,
//       "team_jersey": teamJersey,
//       "points": totalPoints,
//       "email": userEmail
//     });
//   }

//   Future<User> getUser(String uid) async {
//     return User(uid: uid);
//   }

//   // get stream of all the teams in the database
//   // Stream<List<Team>> get teams {
//   //   return teamCollection.snapshots().map(_teamFromSnapshot);
//   // }

//   // get team doc steam
//   @override
//   Stream<User> get userData {
//     try {
//       return teamCollection
//           .doc(uid)
//           .snapshots()
//           .map((snapshot) => _teamDataFromSnapShot(snapshot));
//     } catch (e) {
//       print("Error from firestore: $e");
//       return null;
//     }
//   }
// }
