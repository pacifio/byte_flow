/// This method returns an object composed from key-value ```pairs```.
/// Example
/// ```dart
/// pairs([['a', 1], ['b', 2]]);
/// // Returns { 'a': 1, 'b': 2 }
/// ```
Map pairs(List pairs) {
  var index = -1, length = pairs.length, result = {};

  while (++index < length) {
    var pair = pairs[index];
    result[pair[0]] = pair[1];
  }
  return result;
}
