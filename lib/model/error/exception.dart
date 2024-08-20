// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:rideshare/model/wallet/get_codes_model.dart';
import 'package:rideshare/model/wallet/wallet_codes_model.dart';

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

// not valid wallet code
class CodeNotCorrect implements Exception {
  final UnValidCodeModel unValidCodeModel;
  CodeNotCorrect({
    required this.unValidCodeModel,
  });
}

//there is no wallet to show
class NoWallet implements Exception {}

// there is no valid code to show
class NoValidCode implements Exception {
  final GetNoCodes getNoCodes;
  NoValidCode({
    required this.getNoCodes,
  });
}
