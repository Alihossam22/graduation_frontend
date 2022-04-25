import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'State_login_sigunp_se.dart';

class passwordCubit extends Cubit<PasswordState>
{
  passwordCubit() : super(passwordIntialState());
  static passwordCubit get(context) =>BlocProvider.of(context);


  bool sec = true;


  void visable()
  {
    sec==sec;
    emit(passwordvisablestate());
  }

  void visableof()
  {
    sec=!sec;
    emit(passwordvisableofstate());
  }



}
