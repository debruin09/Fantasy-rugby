// import 'package:super_rugby_fantasy/models/player.dart';
// import 'package:super_rugby_fantasy/ui/shared/constants.dart';
// import 'package:flutter/material.dart';

// class PlayerProfile extends StatelessWidget {
//   final Player player;
//   PlayerProfile({this.player});
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: Colors.lightBlueAccent,
//       body: Stack(
//         children: <Widget>[
//           Container(
//             width: width,
//             height: height,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(
//                   "assets/images/winners.jpg",
//                 ),
//                 fit: BoxFit.fitHeight,
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 SizedBox(
//                   height: 30.0,
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
//                   width: width,
//                   height: 400.0,
//                   child: Hero(
//                     tag: "player${player.id}",
//                     child: Image.asset(
//                       "assets/images/placeholder.png",
//                       fit: BoxFit.fitHeight,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: width,
//                   height: height * 0.34 + 20.0,
//                   color: Colors.black.withOpacity(0.8),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.only(top: 10.0, left: 20.0),
//                         child: Text(
//                           "Name: ${player.name}",
//                           style: textTheme,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 10.0, left: 20.0),
//                         child: Text(
//                           "Price: \$${player.price}",
//                           style: textTheme,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 10.0, left: 20.0),
//                         child: Text(
//                           "Team: ${player.originalTeam}",
//                           style: textTheme,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 10.0, left: 20.0),
//                         child: Text(
//                           "Position: ${player.position}",
//                           style: textTheme,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 10.0, left: 20.0),
//                         child: Text(
//                           "Points: ${player.points}",
//                           style: textTheme,
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
//             width: width,
//             height: height,
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                     begin: Alignment.center,
//                     end: Alignment.bottomRight,
//                     colors: [
//                   Colors.black.withOpacity(0.1),
//                   Colors.black.withOpacity(0.3),
//                   Colors.black.withOpacity(0.8),
//                 ])),
//           ),
//           Positioned(
//               top: 40.0,
//               right: 1.0,
//               child: FlatButton.icon(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 icon: Icon(
//                   Icons.cancel,
//                   color: Colors.white,
//                   size: 40.0,
//                 ),
//                 label: Text(""),
//               ))
//         ],
//       ),
//     );
//   }
// }
