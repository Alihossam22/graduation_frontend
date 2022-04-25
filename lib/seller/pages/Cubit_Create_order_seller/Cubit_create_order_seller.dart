import 'package:bloc/bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'States_create_order_seller.dart';

class create_order_seller_Cubit extends Cubit<create_order_seller_States>{


  create_order_seller_Cubit() : super(create_order_seller_inital_State());

  static create_order_seller_Cubit get(context)=>BlocProvider.of(context);

}