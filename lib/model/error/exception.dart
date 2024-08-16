class UsernameAlreadyInUse implements Exception {}

class BadRequestSignUp implements Exception {
  List<String> messages;
  BadRequestSignUp({
    required this.messages,
  });
}

// bicycle is empty
class EmptyBicycleRespons implements Exception {}

// No hubs available
class EmptyHubs implements Exception {}
