
import 'package:bloc/bloc.dart';
import 'package:delivery/Deliver/pages/location_&chose_offer/States_location_&_chose_offer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class location_Cubit  extends Cubit<location_States>{

  location_Cubit() : super(location_initail_States());

  static location_Cubit get(context) =>BlocProvider.of(context);


}


class order_chose_search_Cubit  extends Cubit<order_chose_search_States>{

  order_chose_search_Cubit() : super(order_choses_search_initail_States());

  static order_chose_search_Cubit get(context) =>BlocProvider.of(context);


}

class order_Details_chose_search_Cubit  extends Cubit<order_Details_chose_search_States>{

  order_Details_chose_search_Cubit() : super(order_Details_choses_search_initail_States());

  static order_Details_chose_search_Cubit get(context) =>BlocProvider.of(context);


}


