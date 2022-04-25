

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'States_setting_seller.dart';

class myprofile_seller_Cubit extends Cubit<myprofile_seller_States>{

  myprofile_seller_Cubit() : super(myprofile_seller_inital_States());

  static myprofile_seller_Cubit get(context) => BlocProvider.of(context);

}



class username_seller_Cubit  extends Cubit<username_seller_States>{
  username_seller_Cubit() : super(username_seller_inital_State());

  static username_seller_Cubit get(context) => BlocProvider.of(context);

}




class Password_seller_Cubit  extends Cubit<Password_seller_States>{
  Password_seller_Cubit() : super(Password_seller_inital_State());

  static Password_seller_Cubit get(context) => BlocProvider.of(context);

}



class phone_seller_Cubit  extends Cubit<phone_seller_States>{
  phone_seller_Cubit() : super(phone_seller_inital_State());

  static phone_seller_Cubit get(context) => BlocProvider.of(context);

}