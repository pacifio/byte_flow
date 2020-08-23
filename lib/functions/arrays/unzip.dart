/// This method Returns the new array of regrouped elements
List unzip(List array) {
  if (array.isEmpty) {
    return [];
  }
  int index = -1;
  int length = array.length;
  final List result = List(length);
  while (++index < length) {
    result[index] = array[index];
  }

  return result;
}
