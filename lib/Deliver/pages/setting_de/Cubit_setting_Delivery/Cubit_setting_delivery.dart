

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'States_setting_delivery.dart';


class myprofile_Delivery_Cubit extends Cubit<myprofile_Delivery_States>{

  myprofile_Delivery_Cubit() : super(myprofile_Delivery_inital_States());

  static myprofile_Delivery_Cubit get(context) => BlocProvider.of(context);

}



class username_Delivery_Cubit  extends Cubit<username_Delivery_States>{
  username_Delivery_Cubit() : super(username_Delivery_inital_State());

  static username_Delivery_Cubit get(context) => BlocProvider.of(context);

}




class Password_Delivery_Cubit  extends Cubit<Password_Delivery_States>{
  Password_Delivery_Cubit() : super(Password_Delivery_inital_State());

  static Password_Delivery_Cubit get(context) => BlocProvider.of(context);

}



class phone_Delivery_Cubit  extends Cubit<phone_Delivery_States>{
  phone_Delivery_Cubit() : super(phone_Delivery_inital_State());

  static phone_Delivery_Cubit get(context) => BlocProvider.of(context);

}