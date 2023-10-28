/// Current flavor of the app.
///
/// Define this variable during build
/// using *--dart-define=app.flavor=value* syntax.
///
/// Possible values are *free* and *paid*.
const flavor = String.fromEnvironment('app.flavor');
