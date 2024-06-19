sealed class RegistrationException implements Exception {}

final class EmailAlreadyInUseException extends RegistrationException {}

final class InvalidEmailException extends RegistrationException {}

final class WeakPasswordException extends RegistrationException {}

final class UnknownException extends RegistrationException {}
