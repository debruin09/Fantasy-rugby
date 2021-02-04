// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'team.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TeamTearOff {
  const _$TeamTearOff();

// ignore: unused_element
  _Team call(
      {@required String name,
      @required List15<Player> players,
      @required int budget,
      @required String teamJersey,
      @required int teamPoints}) {
    return _Team(
      name: name,
      players: players,
      budget: budget,
      teamJersey: teamJersey,
      teamPoints: teamPoints,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Team = _$TeamTearOff();

/// @nodoc
mixin _$Team {
  String get name;
  List15<Player> get players;
  int get budget;
  String get teamJersey;
  int get teamPoints;

  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res>;
  $Res call(
      {String name,
      List15<Player> players,
      int budget,
      String teamJersey,
      int teamPoints});
}

/// @nodoc
class _$TeamCopyWithImpl<$Res> implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  final Team _value;
  // ignore: unused_field
  final $Res Function(Team) _then;

  @override
  $Res call({
    Object name = freezed,
    Object players = freezed,
    Object budget = freezed,
    Object teamJersey = freezed,
    Object teamPoints = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      players: players == freezed ? _value.players : players as List15<Player>,
      budget: budget == freezed ? _value.budget : budget as int,
      teamJersey:
          teamJersey == freezed ? _value.teamJersey : teamJersey as String,
      teamPoints: teamPoints == freezed ? _value.teamPoints : teamPoints as int,
    ));
  }
}

/// @nodoc
abstract class _$TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$TeamCopyWith(_Team value, $Res Function(_Team) then) =
      __$TeamCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      List15<Player> players,
      int budget,
      String teamJersey,
      int teamPoints});
}

/// @nodoc
class __$TeamCopyWithImpl<$Res> extends _$TeamCopyWithImpl<$Res>
    implements _$TeamCopyWith<$Res> {
  __$TeamCopyWithImpl(_Team _value, $Res Function(_Team) _then)
      : super(_value, (v) => _then(v as _Team));

  @override
  _Team get _value => super._value as _Team;

  @override
  $Res call({
    Object name = freezed,
    Object players = freezed,
    Object budget = freezed,
    Object teamJersey = freezed,
    Object teamPoints = freezed,
  }) {
    return _then(_Team(
      name: name == freezed ? _value.name : name as String,
      players: players == freezed ? _value.players : players as List15<Player>,
      budget: budget == freezed ? _value.budget : budget as int,
      teamJersey:
          teamJersey == freezed ? _value.teamJersey : teamJersey as String,
      teamPoints: teamPoints == freezed ? _value.teamPoints : teamPoints as int,
    ));
  }
}

/// @nodoc
class _$_Team extends _Team {
  const _$_Team(
      {@required this.name,
      @required this.players,
      @required this.budget,
      @required this.teamJersey,
      @required this.teamPoints})
      : assert(name != null),
        assert(players != null),
        assert(budget != null),
        assert(teamJersey != null),
        assert(teamPoints != null),
        super._();

  @override
  final String name;
  @override
  final List15<Player> players;
  @override
  final int budget;
  @override
  final String teamJersey;
  @override
  final int teamPoints;

  @override
  String toString() {
    return 'Team(name: $name, players: $players, budget: $budget, teamJersey: $teamJersey, teamPoints: $teamPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Team &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.players, players) ||
                const DeepCollectionEquality()
                    .equals(other.players, players)) &&
            (identical(other.budget, budget) ||
                const DeepCollectionEquality().equals(other.budget, budget)) &&
            (identical(other.teamJersey, teamJersey) ||
                const DeepCollectionEquality()
                    .equals(other.teamJersey, teamJersey)) &&
            (identical(other.teamPoints, teamPoints) ||
                const DeepCollectionEquality()
                    .equals(other.teamPoints, teamPoints)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(players) ^
      const DeepCollectionEquality().hash(budget) ^
      const DeepCollectionEquality().hash(teamJersey) ^
      const DeepCollectionEquality().hash(teamPoints);

  @JsonKey(ignore: true)
  @override
  _$TeamCopyWith<_Team> get copyWith =>
      __$TeamCopyWithImpl<_Team>(this, _$identity);
}

abstract class _Team extends Team {
  const _Team._() : super._();
  const factory _Team(
      {@required String name,
      @required List15<Player> players,
      @required int budget,
      @required String teamJersey,
      @required int teamPoints}) = _$_Team;

  @override
  String get name;
  @override
  List15<Player> get players;
  @override
  int get budget;
  @override
  String get teamJersey;
  @override
  int get teamPoints;
  @override
  @JsonKey(ignore: true)
  _$TeamCopyWith<_Team> get copyWith;
}
