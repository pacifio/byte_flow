/// Gets all but the first element of array.
List tail(List array) {
  array.removeAt(0);
  return array;
}
