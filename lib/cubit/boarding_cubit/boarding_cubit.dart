import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:halal/cubit/boarding_cubit/boarding_state.dart';

class BoardingCubit extends Cubit<BoardingState> {
  int index = 0;
  int currentItemIndex = 0;
  Color color = const Color(0xff058F1A);
  BoardingCubit() : super(InitialState());

  void changeBoarding(int indexAt) {
    index = indexAt;
    emit(BoardingChangeState());
  }

  void changeCurrentItemIndex(int index) {
    currentItemIndex = index;
    emit(BoardingChangeState());
  }
}
