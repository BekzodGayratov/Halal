import 'package:bloc/bloc.dart';
import 'package:halal/cubit/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  bool isActive = false;
  LoginCubit() : super(LoginInitialState());

  void changeState() {
    isActive = true;
    emit(LoginChangeState());
  }
}
