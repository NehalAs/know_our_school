//TODO: add your view model class here

import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_our_school/ViewModel/states.dart';
import '../Model/model.dart';

class AppViewModel extends Cubit<AppStates>
{
  AppViewModel() :super (AppInitialState());
  static AppViewModel get(context) => BlocProvider.of(context);

  late SchoolDataModel schoolModel;
  Future<void> getSchoolData()
  async {
    final String response = await rootBundle.loadString('lib/JSONdata/SchoolData.json');
    final data = await  jsonDecode(response);
    print(data);
    schoolModel= SchoolDataModel.fromJson(data[0]);
    print('School data fetched successfully');
    emit(AppGetDataSuccessState());

  }
}