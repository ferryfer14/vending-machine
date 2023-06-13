extension IterationWithIndex<T> on Iterable<T> {
  Iterable<E> mapWithIndex<E>(E Function(int index, T value) f) =>
      Iterable.generate(length).map((i) => f(i, elementAt(i)));
}

extension IterableModifier<E> on Iterable<E> {
  E? firstWhereOrNull(bool Function(E) test) =>
      cast<E?>().firstWhere((v) => v != null && test(v), orElse: () => null);
}
