import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:kt_dart/kt.dart';
import 'package:super_rugby_fantasy/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:super_rugby_fantasy/domain/team/player.dart';
import 'package:super_rugby_fantasy/presentation/post_registration/misc/test_data.dart';
import 'package:super_rugby_fantasy/presentation/routes/router.gr.dart';

final selectedProvider = StateProvider<List<ListItem>>((ref) {
  final players = List<Player>.generate(8, (index) => Player.empty());
  playersData.addAll(players);
  final list =
      playersData.map((e) => ListItem(isSelected: false, data: e)).toList();
  return list;
});

class ChoosePlayerPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final list = watch(selectedProvider).state;
    return Scaffold(
      backgroundColor: Colors.lightBlue[400],
      appBar: AppBar(
        title: Text("Choose Players"),
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              color: Colors.lightBlue,
              child: ListTile(
                onTap: () {
                  if (list.any((item) => item.isSelected)) {}
                },
                leading: GestureDetector(
                  onTap: () {
                    ExtendedNavigator.root.push(Routes.playerProfilePage,
                        arguments: PlayerProfilePageArguments(
                            player: playersData[index]));
                  },
                  child: CircleAvatar(
                    child: Hero(
                      tag: "player${list[index].data.id}",
                      child: Image.asset("assets/images/placeholder.png"),
                    ),
                  ),
                ),
                title: Text(
                  list[index].data.name,
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "${list[index].data.price}",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          ReadContext(context).read<SignInFormBloc>().add(
                const SignInFormEvent.registerWithEmailAndPasswordPressed(),
              );

          // ExtendedNavigator.root.push(Routes.dashboardPage);
        },
        child: Icon(
          Icons.navigate_next,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ListItem<T> {
  bool isSelected = false; //Selection property to highlight or not
  T data; //Data of the user
  ListItem(
      {@required this.isSelected,
      @required this.data}); //Constructor to assign the data
  ListItem<T> copyWith({bool isSelected, T data}) =>
      ListItem(isSelected: isSelected, data: data);
  @override
  String toString() => "ListItem($isSelected, $data)";
}
