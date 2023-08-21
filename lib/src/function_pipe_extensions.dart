extension FunctionPipe<T, R> on R Function(T) {
  A pipe<A>(A Function(R Function(T)) func) => func(this);
}

extension FunctionPipe2<T1, T2, R> on R Function(T1, T2) {
  A pipe2<A>(A Function(R Function(T1, T2)) func) => func(this);
}

extension FunctionPipe3<T1, T2, T3, R> on R Function(T1, T2, T3) {
  A pipe3<A>(A Function(R Function(T1, T2, T3)) func) => func(this);
}

extension FunctionPipe4<T1, T2, T3, T4, R> on R Function(T1, T2, T3, T4) {
  A pipe4<A>(A Function(R Function(T1, T2, T3, T4)) func) => func(this);
}

extension FunctionPipe5<T1, T2, T3, T4, T5, R> on R Function(
    T1, T2, T3, T4, T5) {
  A pipe5<A>(A Function(R Function(T1, T2, T3, T4, T5)) func) => func(this);
}
