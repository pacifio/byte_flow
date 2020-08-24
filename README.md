# Byte flow

Byte flow is a pure dart , dependency less library that provides common utility functions for dart lists and arrays following the functional programming paradigm , inspired heavily by the Javascript lodash library

# Contents
[Install](#Install)

[Functions](#Functions)
- [Array](#Array)
- [String](#String)

# Install
```yaml
dependencies:
  byte_flow: ^0.0.1
```
After this run `flutter pub get`
Then import the library
```dart
import 'package:byte_flow/byte_flow.dart';
```

# Functions

Byte flow contains helpful utility functions for lists and strings but it's main target is to provide developers rich set of array utilites .

# Array

First import the library like this
```dart
import 'package:byte_flow/byte_flow.dart' as _;
```
***
### `_.chunk(List array, [int size = 1])`
Creates an array of elements split into groups the length of `size`. If `array` can't be split evenly, the final chunk will be the remaining elements.

Example
```dart
_.chunk(['a', 'b', 'c', 'd'], 2);
// Returns ['a', 'b'],['c', 'd']

_.chunk(['a', 'b', 'c', 'd'], 3)
// Returns ['a', 'b', 'c'],['d']
```
***
### `_.slice(List array, [int start = 0, int end])`
Creates a slice of `array` from `start` up to, but not including, `end`.

Example
```dart
_.slice([1, 2, 3, 4], 2);
// Returns [3, 4]
```
***
### `_.compact(List array)`
Creates an array with all falsey values removed. The values `false`, `null`,`0`, `""`, and `NaN` are falsey.

Example
```dart
_.compact([0, 1, false, 2, '', 3]);
// Returns [1, 2, 3]

_.compact([1, 2, 'some data', 2, '', 3, false, null]);
// Returns [1, 2, 'some data', 2, 3]
```
***
### `_.drop(List array, [int n = 1])`
Creates a slice of `array` with `n` elements dropped from the beginning.

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
***
### `_.dropRight(List array, [int n = 1])`
Creates a slice of `array` with `n` elements dropRightped from the beginning.

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
***
### `_.fill(List array, dynamic value, [int start = 0, int end])`
Fills elements of `array` with `value` from `start` up to, but not including, `end`.

Example
```dart
_.fill(List(3), 4);
// Returns [4, 4, 4]
```
***
