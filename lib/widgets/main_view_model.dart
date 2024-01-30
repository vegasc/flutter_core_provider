import 'package:flutter/widgets.dart';
import 'package:flutter_core/base/live_data.dart';
import 'package:flutter_core/base/view_model.dart';

import '../base/base_state.dart';

class MainViewModel extends ViewModel {

  // Fields

  static MainViewModel of(BuildContext context) => ViewModel.get(context);

  // number

  final LiveData _numberLiveData = LiveData();
  Stream<BaseState> get numberStream => _numberLiveData.stream;

  int _number = 0;
  int get number => _number;

  void set(int number) {
    _number = number;
    _numberLiveData.addState(UpdateState());
  }

  //


  @override
  void dispose() {
    _numberLiveData.dispose();
  }

}