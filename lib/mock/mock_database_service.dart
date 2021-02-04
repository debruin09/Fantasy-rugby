// import 'dart:async';

// import 'package:super_rugby_fantasy/models/user.dart';
// import 'package:super_rugby_fantasy/repositories/database_repository.dart';

// class MockDatabaService extends DatabaseRepository {
//   static StreamController userController = StreamController();
//   Stream get userDataStream => userController.stream;

//   void dispose() {
//     userController.close();
//   }

//   @override
//   Future updateTeamData(
//       {String teamName,
//       List<dynamic> players,
//       String teamJersey,
//       int totalPoints,
//       String userEmail,
//       int budget}) async {
//     return;
//   }

//   Stream<UserData> userStream() async* {
//     yield UserData(
//         budget: 10000,
//         userEmail: "test@test.com",
//         players: [],
//         teamName: "Testers");
//   }

//   @override
//   Stream<UserData> get userData => userStream();
// }
