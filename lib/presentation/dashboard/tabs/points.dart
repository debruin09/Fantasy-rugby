import 'package:flutter/material.dart';
import 'package:super_rugby_fantasy/presentation/post_registration/misc/test_data.dart';

class PointsTab extends StatelessWidget {
  const PointsTab();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                children: playersData
                    .map(
                      (player) => Card(
                        color: Colors.transparent,
                        child: Container(
                          height: 100.0,
                          width: 150,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                  child: Container(
                                height: 80.0 * 0.9,
                                width: 160 * 0.6,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/jerseys/blues jersey.png"),
                                        fit: BoxFit.fitHeight)),
                              )),
                              Positioned(
                                bottom: 10.0,
                                left: 20.0,
                                child: player.isCaptain
                                    ? RichText(
                                        text: TextSpan(children: <TextSpan>[
                                          TextSpan(
                                            text: "${player.name}",
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "  C",
                                            style: TextStyle(
                                                fontSize: 25.0,
                                                color: Colors.pink,
                                                fontWeight: FontWeight.w900),
                                          )
                                        ]),
                                      )
                                    : Text(
                                        "${player.name}",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                              ),
                              Positioned(
                                top: 10.0,
                                right: 30.0,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 37.0,
                                  width: 37.0,
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue,
                                      borderRadius:
                                          BorderRadius.circular(50.0)),
                                  child: Text(
                                    '${player.points}',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              player.hasRedCard == true
                                  ? Positioned(
                                      top: 1.0,
                                      right: 7.0,
                                      child: Container(
                                        height: 25.0,
                                        width: 15.0,
                                        color: Colors.red,
                                      ),
                                    )
                                  : Container(),
                              player.hasYellowCard == true
                                  ? Positioned(
                                      top: 1.0,
                                      right: 1.0,
                                      child: Container(
                                        height: 25.0,
                                        width: 15.0,
                                        color: Colors.yellow,
                                      ),
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ));
  }
}
