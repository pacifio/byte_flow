import 'package:byte_flow/functions/arrays/slice.dart';

/// The base implementation of methods like `dropWhile` and `takeWhile`.
List baseWhile(List array, predicate, isDrop, fromRight) {
  int index = fromRight ? array.length : -1;
  while ((fromRight ? index-- : ++index < array.length) &&
      predicate(array[index], index, array)) {}

  return isDrop
      ? slice(array, (fromRight ? 0 : index),
          (fromRight ? index + 1 : array.length))
      : slice(array, (fromRight ? index + 1 : 0),
          (fromRight ? array.length : index));
}
