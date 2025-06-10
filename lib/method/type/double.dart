double? methodTypeDouble(dynamic source) {
  if (source == null) {
    return null;
  }
  return double.tryParse(source);
}
