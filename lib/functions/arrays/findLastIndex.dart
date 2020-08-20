/// This method finds the item in the array from right / last
/// using dart's ```List.indexOf()``` method
int findLastIndex(List array, dynamic element) {
  return array.reversed.toList().indexOf(element);
}
