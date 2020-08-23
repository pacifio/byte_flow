/// Gets the element at index `n` of `array`. If `n` is negative, the nth
/// element from the end is returned.
dynamic nth(List array, int n) {
  int length = array == null ? 0 : array.length;
  if (length != 0) {
    n += n < 0 ? length : 0;
    try {
      return array[n];
    } on RangeError catch (_) {
      return null;
    }
  } else {
    return null;
  }
}
