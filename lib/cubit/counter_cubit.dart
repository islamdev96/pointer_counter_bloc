import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamApointers = 0;
  int teamBpointers = 0;

  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamApointers += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBpointers += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
