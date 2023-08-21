extension Pipe<T> on T {
  /// Pipe the [this] value into a function.
  ///
  /// Example:
  /// ```dart
  /// int calculateAgeInDogYears(int age, int dogYearsPerHumanYear) => age * dogYearsPerHumanYear;
  /// String getAgeMessage(int age) => 'You are $age years old in dog years';
  ///
  /// void main() {
  ///  calculateAgeInDogYears(10, 7)
  ///   .pipe(getAgeMessage)
  ///   .pipe(print); // You are 10 years old in dog years
  /// }
  /// ```
  ///
  R pipe<R>(R Function(T) func) => func(this);
}

extension Pipe2<T1> on T1 {
  /// Pipe the [this] value into a function.
  /// This is a two argument version of [Pipe.pipe].
  /// It is useful for higher order functions that take two arguments.
  ///
  /// Example:
  /// ```dart
  /// int calculateAgeInDogYears(int age, int dogYearsPerHumanYear) => age * dogYearsPerHumanYear;
  /// String getAgeMessage(int age, String name) => '$name is $age years old in dog years';
  ///
  /// void main() {
  ///  calculateAgeInDogYears(10, 7)
  ///   .pipe2(getAgeMessage, 'John')
  ///   .pipe(print); // John is 70 years old in dog years
  /// }
  /// ```
  R pipe2<R, T2>(R Function(T1, T2) func, T2 arg2) => func(this, arg2);
}

extension Pipe3<T1> on T1 {
  /// Pipe the [this] value into a function.
  /// This is a three argument version of [Pipe.pipe].
  /// It is useful for higher order functions that take three arguments.
  ///
  /// See [Pipe.pipe2] for an example.
  ///
  R pipe3<R, T2, T3>(R Function(T1, T2, T3) func, T2 arg2, T3 arg3) =>
      func(this, arg2, arg3);
}

extension Pipe4<T1> on T1 {
  /// Pipe the [this] value into a function.
  /// This is a four argument version of [Pipe.pipe].
  /// It is useful for higher order functions that take four arguments.
  ///
  /// See [Pipe.pipe2] for an example.
  R pipe4<R, T2, T3, T4>(
          R Function(T1, T2, T3, T4) func, T2 arg2, T3 arg3, T4 arg4) =>
      func(this, arg2, arg3, arg4);
}

extension Pipe5<T1> on T1 {
  /// Pipe the [this] value into a function.
  /// This is a five argument version of [Pipe.pipe].
  /// It is useful for higher order functions that take five arguments.
  ///
  /// See [Pipe.pipe2] for an example.
  R pipe5<R, T2, T3, T4, T5>(R Function(T1, T2, T3, T4, T5) func, T2 arg2,
          T3 arg3, T4 arg4, T5 arg5) =>
      func(this, arg2, arg3, arg4, arg5);
}
