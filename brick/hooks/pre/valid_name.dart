void assertValidName(String input) {
  final regEx = RegExp(r'^[A-Za-z0-9_ ]+$');
  final isValid = regEx.hasMatch(input);
  if (!isValid) throw InvalidNameException(input);
}

class InvalidNameException implements Exception {
  const InvalidNameException(this.orgName);
  final String orgName;
  @override
  String toString() => 'Invalid feature name: $orgName';
}
