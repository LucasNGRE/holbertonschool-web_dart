List<double> convertToF(List<double> c) {
  List<double> fahrenheit = [];
  for (double temp in c) {
    double f = (temp * 9 / 5) + 32;
    fahrenheit.add(double.parse(f.toStringAsFixed(2)));
  }
  return fahrenheit;
}
