part of 'team_bloc.dart';

@freezed
abstract class TeamState with _$TeamState {
  const factory TeamState.initial() = _Initial;
}
