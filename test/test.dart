import 'package:test/test.dart';
import '../lib/byte_flow.dart';

main() {
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
}
