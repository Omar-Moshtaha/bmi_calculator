import 'package:bmi_calculator/shared/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  bool isMale = true;
  double number = 180;
  double weight = 40;
  double age = 40;

  void typeGender(bool value) {
    isMale = value;
    emit(TypeOfGender());
  }

  void valueOfSlider(value) {
    number = value;
    emit(SliderValue());
  }

  void increaseMyAge() {
    age++;
    emit(IncreaseInAge());
  }

  void reduceAge() {
    age--;
    emit(ReduceInAge());
  }

  void overMyWeight() {
    weight++;
    emit(OverWeight());
  }

  void reduceMyWeight() {
    weight--;
    emit(ReduceWeight());
  }
}
