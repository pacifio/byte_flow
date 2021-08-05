import 'package:byte_flow/functions/arrays/slice.dart';

/// The base implementation of methods like `dropWhile` and `takeWhile`.
List baseWhile(List list, Function predicate, bool isDrop, bool fromRight) {
  int index = fromRight ? list.length : -1;

  while ((index < list.length) && predicate(list[index], index, list)) {
    if (fromRight) {
      index--;
    } else {
      ++index;
    }
  }

  return isDrop
      ? slice(
          list, (fromRight ? 0 : index), (fromRight ? index + 1 : list.length))
      : slice(
          list, (fromRight ? index + 1 : 0), (fromRight ? list.length : index));
}
