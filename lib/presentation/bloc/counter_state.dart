class CounterState {
  final int count;

  CounterState({required this.count});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is CounterState &&
              runtimeType == other.runtimeType &&
              count == other.count;

  @override
  int get hashCode => count.hashCode;
}