import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:super_rugby_fantasy/presentation/core/constants.dart';
import 'package:super_rugby_fantasy/presentation/routes/router.gr.dart';

class CreateTeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.lightBlue[400],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightBlueAccent,
        title: Text(
          "Create Team",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              fontFamily: "ComicNeue"),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                width: width,
                height: height * 0.6,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo2.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Form(
                child: Column(children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Budget: ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                              fontFamily: "BalooThambi2"),
                        ),
                        Text(
                          "10000",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                              fontFamily: "BalooThambi2"),
                        )
                      ]),
                  const SizedBox(height: 10.0),
                  TextFormField(
                    validator: (val) =>
                        val.isEmpty ? "Enter Your Team's name" : null,
                    onChanged: (value) {},
                    decoration:
                        formTheme.copyWith(hintText: "Enter your team name"),
                  ),
                  const SizedBox(height: 20.0),
                  SingleChildScrollView(
                    child: Column(
                      children: jerseys,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: <Widget>[
                      // Expanded(
                      //   child: DropdownButtonFormField<String>(
                      //       decoration: formTheme,
                      //       value: "Niks",
                      //       items: [
                      //         DropdownMenuItem<String>(
                      //           value: "test",
                      //           child: Text("tester"),
                      //         )
                      // ],
                      // dropDownItems
                      //     .map(
                      //       (String position) => DropdownMenuItem<String>(
                      //         value: position,
                      //         child: Text(
                      //           position,
                      //           style: TextStyle(
                      //               color: Colors.black,
                      //               fontFamily: "BalooThambi2"),
                      //         ),
                      //       ),
                      //     )
                      //     .toList(),
                      // onChanged: (String value) {}),
                      // ),
                    ],
                  ),
                  SizedBox(height: 15.0),
                ]),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          ExtendedNavigator.root.push(Routes.choosePlayerPage);
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
