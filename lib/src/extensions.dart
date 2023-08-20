extension Pipe<T> on T {
  R pipe<R>(R Function(T) func) => func(this);
}

extension Pipe2<T1> on T1 {
  R pipe2<R, T2>(R Function(T1, T2) func, T2 arg2) => func(this, arg2);
}

extension Pipe3<T1> on T1 {
  R pipe3<R, T2, T3>(R Function(T1, T2, T3) func, T2 arg2, T3 arg3) =>
      func(this, arg2, arg3);
}

extension Pipe4<T1> on T1 {
  R pipe4<R, T2, T3, T4>(
          R Function(T1, T2, T3, T4) func, T2 arg2, T3 arg3, T4 arg4) =>
      func(this, arg2, arg3, arg4);
}

extension Pipe5<T1> on T1 {
  R pipe5<R, T2, T3, T4, T5>(R Function(T1, T2, T3, T4, T5) func, T2 arg2,
          T3 arg3, T4 arg4, T5 arg5) =>
      func(this, arg2, arg3, arg4, arg5);
}

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
