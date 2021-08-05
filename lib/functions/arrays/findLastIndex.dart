/// This method finds the item in the list from right / last
/// using dart's ```List.indexOf()``` method
/// Example
/// ```dart
/// _.findLastIndex(["Jack", "Yash", "Adib", "Adib"], "Adib");
/// // Returns 0
/// ```
int findLastIndex(List list, dynamic element) {
  return list.reversed.toList().indexOf(element);
}
