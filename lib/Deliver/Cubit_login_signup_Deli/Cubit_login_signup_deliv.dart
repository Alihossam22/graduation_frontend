import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'States_login_signup_deliv.dart';

class password_De_Cubit extends Cubit<Password_De_State> {
  password_De_Cubit() : super(passwordIntialState());

  static password_De_Cubit get(context) => BlocProvider.of(context);


  bool sec = true;


  void visable() {
    sec == sec;
    emit(passwordvisablestate());
  }

  void visableof() {
    sec = !sec;
    emit(passwordvisableofstate());
  }
}

