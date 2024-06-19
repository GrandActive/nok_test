sealed class LogInException implements Exception {}

final class WrongEmailException extends LogInException {}

final class WrongPasswordException extends LogInException {}

final class TooManyRequestsException extends LogInException {}

final class UnknownException extends LogInException {}
