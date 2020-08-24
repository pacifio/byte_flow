/// This method Returns the new array of regrouped elements
/// Example
/// ```dart
/// unzip([['a', 1, true], ['b', 2, false]]);
/// // Returns [['a', 'b'], [1, 2], [true, false]]
/// ```
/// Credit to [vikramcse](https://github.com/vikramcse/unzip-array)
List unzip(List array) {
  var elements = array.length;
  var len = array[0].length;
  var result = [];

  for (var i = 0; i < len; i++) {
    var temp = [];
    for (var j = 0; j < elements; j++) {
      temp.add(array[j][i]);
    }
    result.add(temp);
  }

  return result;
}
