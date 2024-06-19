sealed class PasswordRestorationException implements Exception {}

final class InvalidEmailException extends PasswordRestorationException {}

final class UnknownException extends PasswordRestorationException {}
