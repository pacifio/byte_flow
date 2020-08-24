import 'package:test/test.dart';
import '../lib/byte_flow.dart';

void _testArrayFunctions() {
  test('chunk', () {
    expect(chunk(['a', 'b', 'c', 'd'], 2), [
      ['a', 'b'],
      ['c', 'd']
    ]);
  });

  test('slice', () {
    expect(slice([1, 2, 3, 4], 2), [3, 4]);
  });

  test('compact', () {
    expect(compact([0, 1, false, 2, '', 3]), [1, 2, 3]);
  });

  test('drop', () {
    expect(drop([1, 2, 3]), [2, 3]);
  });

  test('topRight', () {
    expect(dropRight([1, 2, 3]), [1, 2]);
  });

  test('fill', () {
    expect(fill(List(3), 4), [4, 4, 4]);
  });

  test('findIndex', () {
    expect(findIndex(["Jack", "Yash", "Adib", "Adib"], "Adib"), 2);
  });

  test('findLastIndex', () {
    expect(findLastIndex(["Jack", "Yash", "Adib", "Adib"], "Adib"), 0);
  });

  test('head', () {
    expect(head(["Dart", "Javascript", "Swift"]), "Dart");
  });

  test('flatten', () {
    expect(
        flatten([
          [1, 2, 3],
          ['a', 'b', 'c'],
          [true, false, true]
        ]),
        [1, 2, 3, 'a', 'b', 'c', true, false, true]);
  });

  test('pairs', () {
    expect(
        pairs([
          ['a', 1],
          ['b', 2]
        ]),
        {'a': 1, 'b': 2});
  });

  test('initial', () {
    expect(initial([1, 2, 3]), [1, 2]);
  });

  test('map', () {
    expect(
        map([4, 8], (n, index, array) {
          return n * n;
        }),
        [16, 64]);
    expect(
        map([4, 8], (n, index, array) {
          return n * 0;
        }),
        [0, 0]);
  });

  test('intersection', () {
    final lists = [
      [1, 2, 3],
      [2, 4, 5],
      [2, 8, 9]
    ];
    expect(intersect(lists), [2]);
  });

  test("join", () {
    expect(join(['a', 'b', 'c'], '~'), 'a~b~c');
  });

  test('last', () {
    expect(last(["Dart", "Javascript", "Swift"]), "Swift");
  });

  test('nth', () {
    expect(nth(['a', 'b', 'c', 'd'], 2), 'c');
    expect(nth(['a', 'b', 'c', 'd'], -1), 'd');
  });

  test('sortedIndex', () {
    expect(sortedIndex([30, 50], 60), 2);
  });

  test('tail', () {
    expect(tail([1, 2, 3]), [2, 3]);
  });

  test('take', () {
    expect(take([1, 2, 3], 2), [1, 2]);
  });

  test('takeRight', () {
    expect(takeRight([1, 2, 3], 2), [2, 3]);
  });

  test('union', () {
    expect(
        union([
          [2],
          [1, 2]
        ]),
        [2, 1]);
  });

  test('unzip', () {
    expect(
        unzip([
          ['a', 1, true],
          ['b', 2, false]
        ]),
        [
          ['a', 'b'],
          [1, 2],
          [true, false]
        ]);
  });

  test('zip', () {
    expect(zip(['a', 'b', 'c'], [1, 2, 3]), [
      ['a', 1],
      ['b', 2],
      ['c', 3]
    ]);
  });

  test('duplicate', () {
    expect(duplicate([10, 12, 9, 21, 1, 2, 10]), [10]);
  });
}

void _testStringFunctions() {
  test('capitalize', () {
    expect(capitalize("hello world !"), "Hello world !");
  });
}

main() {
  _testArrayFunctions();
  _testStringFunctions();
}
