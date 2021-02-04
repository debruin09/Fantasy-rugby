// import 'package:super_rugby_fantasy/models/user.dart';
// import 'package:super_rugby_fantasy/repositories/auth_repository.dart';

// class MockAuthService extends AuthRepository {
// // check if user is signed in or not then return a bool
//   @override
//   Future<bool> isSignedIn() async {
//     await Future.delayed(Duration(seconds: 1));
//     final check = true;
//     return check;
//   }

//   @override
//   Future<void> logout() async {
//     print("User logged out");
//   }

//   @override
//   Future<UserData> signUp({String email, String password}) async {
//     await Future.delayed(Duration(seconds: 1));
//     return UserData(uid: "12345", userEmail: "St.Klue");
//   }

//   @override
//   Future<UserData> loginUser({String email, String password}) async {
//     await Future.delayed(Duration(seconds: 1));
//     return UserData(uid: "12345", userEmail: "St.Klue");
//   }

//   @override
//   Future<UserData> getUser() async {
//     await Future.delayed(Duration(seconds: 1));
//     return UserData(uid: "12345", userEmail: "St.Klue");
//   }
// }
