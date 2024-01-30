import 'package:rxdart/rxdart.dart';
import 'base_state.dart';

class LiveData {
  final BehaviorSubject<BaseState> _streamController =
  BehaviorSubject<BaseState>();
  Stream<BaseState> get stream => _streamController.stream;

  void addState(BaseState state) {
    _streamController.sink.add(state);
  }

  void dispose() {
    _streamController.close();
  }

  void onUpdateState() {
    addState(UpdateState());
  }
}