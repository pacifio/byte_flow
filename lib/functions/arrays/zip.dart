/// Zips two arrays
/// [Credit](https://stackoverflow.com/questions/22015684/how-do-i-zip-two-arrays-in-javascript)
List zip(List a, List b) {
  return a.map((e) {
    final int index = a.indexOf(e);
    return [e, b[index]];
  }).toList();
}
