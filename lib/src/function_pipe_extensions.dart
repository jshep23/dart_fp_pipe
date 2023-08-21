extension FunctionPipe<T, R> on R Function(T) {
  /// Pipe the result of this function into another function.
  ///
  /// Example:
  /// ```dart
  /// int add(int a, int b) => a + b;
  /// String getResultMessage<T extends num>(T result) => 'Result: $result';
  ///
  /// void main() {
  ///  add(1, 2)
  ///   .pipe(getResultMessage)
  ///   .pipe(print); // Result: 3
  /// }
  ///
  /// ```
  ///
  A pipe<A>(A Function(R Function(T)) func) => func(this);
}

extension FunctionPipe2<T1, T2, R> on R Function(T1, T2) {
  /// Pipe the result of this function into another function.
  /// This is a two argument version of [FunctionPipe.pipe].
  /// It is useful for higher order functions that take two arguments.
  ///
  /// Example:
  /// ```dart
  /// int add(int a, int b) => a + b;
  ///
  /// String getResultMessage<T extends num>(T result, String additionalInfo) {
  ///   return 'Result: $result $additionalInfo';
  /// }
  ///
  /// void main() {
  ///   add(1, 2)
  ///     .pipe2(getResultMessage, "Good Job!")
  ///     .pipe(print); // Result: 3 Good Job!
  /// }
  /// ```
  ///
  A pipe2<A>(A Function(R Function(T1, T2)) func) => func(this);
}

extension FunctionPipe3<T1, T2, T3, R> on R Function(T1, T2, T3) {
  /// Pipe the result of this function into another function.
  /// This is a three argument version of [FunctionPipe.pipe].
  /// It is useful for higher order functions that take three arguments.
  ///
  /// See [FunctionPipe.pipe2] for an example.
  ///
  A pipe3<A>(A Function(R Function(T1, T2, T3)) func) => func(this);
}

extension FunctionPipe4<T1, T2, T3, T4, R> on R Function(T1, T2, T3, T4) {
  /// Pipe the result of this function into another function.
  /// This is a four argument version of [FunctionPipe.pipe].
  /// It is useful for higher order functions that take four arguments.
  ///
  /// See [FunctionPipe.pipe2] for an example.
  ///
  A pipe4<A>(A Function(R Function(T1, T2, T3, T4)) func) => func(this);
}

extension FunctionPipe5<T1, T2, T3, T4, T5, R> on R Function(
    T1, T2, T3, T4, T5) {
  /// Pipe the result of this function into another function.
  /// This is a five argument version of [FunctionPipe.pipe].
  /// It is useful for higher order functions that take five arguments.
  ///
  /// See [FunctionPipe.pipe2] for an example.
  ///
  A pipe5<A>(A Function(R Function(T1, T2, T3, T4, T5)) func) => func(this);
}
