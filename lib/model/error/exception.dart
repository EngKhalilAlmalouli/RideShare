class UsernameAlreadyInUse implements Exception {}

class BadRequestSignUp implements Exception {
  List<String> messages;
  BadRequestSignUp({
    required this.messages,
  });
}
