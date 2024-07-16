extension SeparatedList<T> on List<T> {
  List<T> separatedBy(T separator) {
    if (length < 2) return this;

    final List<T> out = [];

    for (int i = 0; i < length; i++) {
      out.add(this[i]);
      if (i != length - 1) out.add(separator);
    }

    return out;
  }
}
