



import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'States_order_Details_Delivery.dart';

class order_Details_delivery_forall_Cubit  extends   Cubit<order_Details_delivery_forall_States>{
  order_Details_delivery_forall_Cubit() : super(order_Details_delivery_initail_forall_States());


  static  order_Details_delivery_forall_Cubit   get(context) =>BlocProvider.of(context);



}



class order_Details_delivery_pending_Cubit  extends   Cubit<order_Details_delivery_pending_States>{
  order_Details_delivery_pending_Cubit() : super(order_Details_delivery_initail_pending_States());


  static  order_Details_delivery_pending_Cubit   get(context) =>BlocProvider.of(context);



}