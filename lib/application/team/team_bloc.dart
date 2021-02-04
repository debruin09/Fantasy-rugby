import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_event.dart';
part 'team_state.dart';
part 'team_bloc.freezed.dart';

class TeamBloc extends Bloc<TeamEvent, TeamState> {
  TeamBloc() : super(_Initial());

  @override
  Stream<TeamState> mapEventToState(
    TeamEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
