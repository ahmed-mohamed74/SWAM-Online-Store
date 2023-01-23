import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:itit_project/counter/counter_state.dart';

class CounterLogic extends Cubit<CounterState> {
  CounterLogic() : super(InitCounter());
  double c = 0;

  static CounterLogic getObject(context) {
    return BlocProvider.of(context);
  }

  void PlusCounter() {
    c++;
    emit(Plus());
  }

  void MinusCounter() {
    c--;
    emit(Minus());
  }
}
