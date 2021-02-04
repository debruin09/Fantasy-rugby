import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:super_rugby_fantasy/domain/team/player.dart';
import 'package:super_rugby_fantasy/domain/team/team_failure.dart';
import 'package:super_rugby_fantasy/domain/team/value_objects.dart';
import 'package:dartz/dartz.dart';

part 'team.freezed.dart';

@freezed
abstract class Team implements _$Team {
  const Team._();
  const factory Team({
    @required String name,
    @required List15<Player> players,
    @required int budget,
    @required String teamJersey,
    @required int teamPoints,
  }) = _Team;
  factory Team.empty() => Team(
        name: "No name",
        players: List15(emptyList()),
        budget: 10000,
        teamJersey: "",
        teamPoints: 0,
      );

  Either<TeamFailure, Unit> isTeamValid() {
    List playerFromOriginalTeam =
        []; // If this list is empty then the team is valid
    int countPlayerFromOriginalTeam = 1;

    players.getOrCrash().forEach((player) {
      if (!playerFromOriginalTeam.contains(player.originalTeam)) {
        playerFromOriginalTeam.add(player.originalTeam);
      } else {
        playerFromOriginalTeam.remove(player.originalTeam);
        countPlayerFromOriginalTeam++;
      }
    });

    if (countPlayerFromOriginalTeam == 3) {
      return left(const TeamFailure.unableToUpdate());
    }

    return right(unit);
  }
}
