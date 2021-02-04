part of 'team_bloc.dart';

@freezed
abstract class TeamEvent with _$TeamEvent {
  const factory TeamEvent.started() = _Started;
}