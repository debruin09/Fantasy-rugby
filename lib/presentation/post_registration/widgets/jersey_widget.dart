import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

final jerseyNameProvider = StateProvider((ref) => "");

class Jersey extends StatelessWidget {
  final String jerseyName;

  const Jersey({Key key, @required this.jerseyName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/jerseys/$jerseyName'))),
      ),
    );
  }
}
