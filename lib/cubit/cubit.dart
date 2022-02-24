import 'package:bloc/bloc.dart';
import 'package:bmi_calculator/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  bool isMale = true;
  double number = 180;
  double weight = 40;
  double age = 40;

  void change(bool value) {
    isMale = value;
    emit(Type());
  }

  void value(value) {
    number = value;
    emit(Value());
  }

  void AgePlus() {
    age++;
    emit(Age_Add());
  }

  void AgeMins() {
    age--;
    emit(Age_Mins());
  }

  void Width_PLus() {
    weight++;
    emit(Weight_Plus());
  }

  void Width_Mins() {
    weight--;
    emit(Weight_Mins());
  }
}
