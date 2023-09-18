void assertValidName(String input) {
  final regEx = RegExp(r'^([A-Za-z]{1}[A-Za-z\d_]*\.)+[A-Za-z][A-Za-z\d_]*$');
  final isValid = regEx.hasMatch(input);
  if (!isValid) throw InvalidNameException(input);
}

class InvalidNameException implements Exception {
  const InvalidNameException(this.orgName);
  final String orgName;
  @override
  String toString() => 'Invalid org name: $orgName';
}
