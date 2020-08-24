/// This method uses dart's default List.indexOf
/// Example
/// ```dart
/// _.findIndex(["Jack", "Yash", "Adib", "Alex"], "Adib");
/// // Returns 2
/// ```
int findIndex(List array, dynamic element) {
  return array.indexOf(element);
}
