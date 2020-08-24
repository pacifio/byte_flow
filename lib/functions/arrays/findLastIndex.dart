/// This method finds the item in the array from right / last
/// using dart's ```List.indexOf()``` method
/// Example
/// ```dart
/// _.findLastIndex(["Jack", "Yash", "Adib", "Adib"], "Adib");
/// // Returns 0
/// ```
int findLastIndex(List array, dynamic element) {
  return array.reversed.toList().indexOf(element);
}
