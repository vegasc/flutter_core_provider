abstract class BaseState {
  @override
  String toString() => 'BaseState($hashCode)';
}

class UpdateState extends BaseState {
  @override
  String toString() => 'UpdateState($hashCode)';
}