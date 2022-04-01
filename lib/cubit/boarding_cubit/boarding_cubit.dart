import 'package:bloc/bloc.dart';
import 'package:halal/cubit/boarding_cubit/boarding_state.dart';

class BoardingCubit extends Cubit<BoardingState> {
  int index = 0;
  BoardingCubit() : super(InitialState());

  void changeBoarding(int indexAt) {
    index = indexAt;
    emit(BoardingChangeState());
  }
}
