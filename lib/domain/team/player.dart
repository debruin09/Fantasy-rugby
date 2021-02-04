import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:super_rugby_fantasy/domain/core/value_objects.dart';

part 'player.freezed.dart';

@freezed
abstract class Player implements _$Player {
  const Player._();

  const factory Player({
    @required UniqueId id,
    @required String name,
    @required String position,
    @required int tries,
    @required int penalties,
    @required int dropGoals,
    @required int points,
    @required String originalTeam,
    @required int price,
    @required int conversions,
    @required bool hasYellowCard,
    @required bool hasRedCard,
    @required String profileImage,
    @required bool isCaptain,
    @required bool selected,
  }) = _Player;

  factory Player.empty() => Player(
        id: UniqueId(),
        name: "John Doe",
        position: "PR",
        tries: 0,
        penalties: 0,
        dropGoals: 0,
        points: 0,
        originalTeam: "Blues",
        price: 0,
        conversions: 0,
        hasYellowCard: false,
        hasRedCard: false,
        profileImage: "assets/images/players", // later use a default image
        isCaptain: false,
        selected: true,
      );
}
