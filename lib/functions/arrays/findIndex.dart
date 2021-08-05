/// This method uses dart's default List.indexOf
/// Example
/// ```dart
/// _.findIndex(["Jack", "Yash", "Adib", "Alex"], "Adib");
/// // Returns 2
/// ```
int findIndex(List list, dynamic element) {
  return list.indexOf(element);
}
