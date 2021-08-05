/// he base implementation of `fill` without an iteratee call guard.
List baseFill(List list, value, start, end) {
  int length = list.length;
  if (start < 0) {
    start = -start > length ? 0 : (length + start);
  }
  end = (end == null || end > length) ? length : end;
  if (end < 0) {
    end += length;
  }
  end = start > end ? 0 : end;
  while (start < end) {
    list[start++] = value;
  }
  return list;
}
