# Byte flow

[![Build Status](https://travis-ci.org/pacifio/byte_flow.svg?branch=master)](https://travis-ci.org/pacifio/byte_flow)

Byte flow is a pure dart , dependency less library that provides common utility functions for lists and strings .

## Contents

[Install](##Install)
[Functions](##Functions)
* [Array](##Array)
* [String](##String)
[TODO](##TODO)

## Install

```yaml
dependencies:
  byte_flow: ^1.0.0
```

After this run `flutter pub get`
Then import the library

```dart
import 'package:byte_flow/byte_flow.dart';
```

## Functions

Byte flow contains helpful utility functions for lists and strings but it's main target is to provide developers rich set of list utilites .

## Array

First import the library like this

```dart
import 'package:byte_flow/byte_flow.dart' as _;
```

---

### `_.chunk(List list, [int size = 1])`

Creates an list of elements split into groups the length of `size`. If `list` can't be split evenly, the final chunk will be the remaining elements.

Example

```dart
_.chunk(['a', 'b', 'c', 'd'], 2);
// Returns ['a', 'b'],['c', 'd']

_.chunk(['a', 'b', 'c', 'd'], 3)
// Returns ['a', 'b', 'c'],['d']
```

---

### `_.slice(List list, [int start = 0, int end])`

Creates a slice of `list` from `start` up to, but not including, `end`.

Example

```dart
_.slice([1, 2, 3, 4], 2);
// Returns [3, 4]
```

---

### `_.compact(List list)`

Creates an list with all falsey values removed. The values `false`, `null`,`0`, `""`, and `NaN` are falsey.

Example

```dart
_.compact([0, 1, false, 2, '', 3]);
// Returns [1, 2, 3]

_.compact([1, 2, 'some data', 2, '', 3, false, null]);
// Returns [1, 2, 'some data', 2, 3]
```

---

### `_.drop(List list, [int n = 1])`

Creates a slice of `list` with `n` elements dropped from the beginning.

Example

```dart
_.drop([1, 2, 3]);
// Returns [2,3]

_.drop([1, 2, 3], 2);
// Returns [3]

_.drop([1, 2, 3], 5);
// Returns []

_.drop([1, 2, 3], 0);
// Returns [1, 2, 3]
```

---

### `_.dropRight(List list, [int n = 1])`

Creates a slice of `list` with `n` elements dropRightped from the beginning.

Example

```dart
_.dropRight([1, 2, 3])
// Returns [1,2]
_.dropRight([1, 2, 3], 2)
// Returns [1]
_.dropRight([1, 2, 3], 5)
// Returns []
_.dropRight([1, 2, 3], 0)
// Returns [1, 2, 3]
```

---

### `_.fill(List list, dynamic value, [int start = 0, int end])`

Fills elements of `list` with `value` from `start` up to, but not including, `end`.

Example

```dart
_.fill(List(3), 4);
// Returns [4, 4, 4]
```

---

### `_.findIndex(List list, dynamic element)`

This method uses dart's default `List.indexOf()`

Example

```dart
_.findIndex(["Jack", "Yash", "Adib", "Alex"], "Adib");
// Returns 2
```

---

### `_.findLastIndex(List list, dynamic element)`

This method finds the item in the list from right / last using dart's `List.indexOf()` method

Example

```dart
_.findLastIndex(["Jack", "Yash", "Adib", "Adib"], "Adib");
// Returns 0
```

---

### `_.head(List list)`

Finds the first element in the list Uses dart's `List.first` property

Example

```dart
_.head(["Dart", "Javascript", "Swift"]);
// Returns "Dart"
```

---

### `_.flatten(List list)`

Flatten a list , Credit goes to [Justin Fagnani](https://stackoverflow.com/users/192153/justin-fagnani)

Example

```dart
_.flatten([
  [1, 2, 3],
  ['a', 'b', 'c'],
  [true, false, true]
]);
// Returns [1, 2, 3, 'a', 'b', 'c', true, false, true]
```

---

### `_.pairs(List pairs)`

This method returns an `map` composed from key-value `pairs`.

Example

```dart
_.pairs([
  ['a', 1],
  ['b', 2]
]);
// Returns {'a': 1, 'b': 2}
```

---

### `\_.initial(List list)```

Gets all but the last element of list.

Example

```dart
_.initial([1, 2, 3]);
// Returns [1, 2]

_.initial([1, 2, 3, 'a', 'b', 'c']);
// Returns [1, 2, 3, 'a', 'b']
```

---

### `_.map(List list, Function(dynamic element, int index, List list) iteratee)`

Creates an list of values by running each element of `list` thru `iteratee`. The iteratee is invoked with three arguments: (value, index, list).

Example

```dart
square(n, index, list) {
  return n*n;
}
_.map([4, 8], square);
// Returns [16, 64]

_.map([4, 8], (n, index, list) {
  return n * 0;
});
// Returns [0, 0]
```

---

### `_.intersect(List<List> arrays)`

Creates an list of unique values that are included in all given arrays

Example

```dart
final lists = [
  [1, 2, 3],
  [2, 4, 5],
  [2, 8, 9]
];
_.intersect(lists);
// Returns [2]
```

---

### `_.join(List list, [String separator = ','])`

Converts all elements in list into a string separated by separator. Uses dart's `List.join()`

Example

```dart
_.join(['a', 'b', 'c'], '~');
// Returns 'a~b~c'
```

---

### `_.last(List list)`

Gets the last element of list. Uses dart's `List.last` property

Example

```dart
_.last(["Dart", "Javascript", "Swift"]);
// Returns "Swift"
```

---

### `_.nth(List list, int n)`

Gets the element at index `n` of `list`. If `n` is negative, the nth element from the end is returned.

Example

```dart
_.nth(['a', 'b', 'c', 'd'], 2);
// Returns 'c'

_.nth(['a', 'b', 'c', 'd'], -1);
// Returns 'd'
```

---

### `_.sortedIndex(List list, dynamic value)`

Uses a binary search to determine the lowest index at which value should be inserted into list in order to maintain its sort order. Returns the index at which value should be inserted into list.

Example

```dart
_.sortedIndex([30, 50], 60);
// Returns 2

_.sortedIndex([30, 50], 40);
// Returns 1

_.sortedIndex([30, 50], 30);
// Returns 0
```

---

### `_.tail(List list)`

Gets all but the first element of list.

Example

```dart
_.tail([1, 2, 3]);
// Returns [2, 3]
```

---

### `_.take(List list, [int n = 1])`

Creates a slice of list with n elements taken from the beginning. Uses dart's native `List.take(n)` method

Example

```dart
_.take([1, 2, 3], 2);
// Returns [1, 2]
```

---

### `_.takeRight(List list, [int n = 1])`

Creates a slice of list with n elements taken from the end.

Example

```dart
takeRight([1, 2, 3])
// => [3]
takeRight([1, 2, 3], 2)
// => [2, 3]
takeRight([1, 2, 3], 5)
// => [1, 2, 3]
takeRight([1, 2, 3], 0)
// => []
```

---

### `_.union(List<List> arrays)`

Creates an list of unique values, in order

Example

```dart
_.union([
  [2],
  [1, 2]
]);

// Returns [2, 1]
```

---

### `_.unzip(List list)`

This method Returns the new list of regrouped elements

Example

```dart
_.unzip([['a', 1, true], ['b', 2, false]]);
// Returns [['a', 'b'], [1, 2], [true, false]]
```

---

### `_.zip(List a, List b)`

Zips two arrays , [Credit](https://stackoverflow.com/questions/22015684/how-do-i-zip-two-arrays-in-javascript)

Example

```dart
_.zip(['a', 'b', 'c'], [1, 2, 3]);
// Returns [['a', 1],['b', 2],['c', 3]]
```

---

### `_.duplicate(List list)`

Find duplicate items in an list .

Example

```dart
_.duplicate([10, 12, 9, 21, 1, 2, 10]);
// Returns [10]
```

## String

Byte flow libraries string utility collection is poor but still under development . The following functions are stable

### `_.capitalize(String text)`

Capitalizes the given string

Example

```dart
_.capitalize("hello world !");
// Returns "Hello world !"
```

## TODO

- [x] Null safety
- [ ] Extension support
