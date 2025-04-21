/// {@template deserialization_exception}
/// [Exception] thrown when the object passed from Repository cannot be
/// deserialized in the expected by the app way.
/// {@endtemplate}
class DeserializationException implements Exception {
  /// {@macro deserialization_exception}
  const DeserializationException();
}
