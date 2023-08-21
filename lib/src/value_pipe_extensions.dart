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
