import 'package:riverpod/riverpod.dart';

AsyncValue<List<T>> merge<T>(Iterable<AsyncValue<T>> values) {
  final List<T> data = [];

  for (final value in values) {
    if (value is AsyncLoading) {
      return AsyncLoading<List<T>>();
    }

    if (value is AsyncError) {
      return AsyncError<List<T>>(
        (value as AsyncError).error,
        (value as AsyncError).stackTrace,
      );
    }

    if (value is AsyncData) {
      data.add(value.data!.value);
    }
  }

  return AsyncData<List<T>>(data);
}

extension Unwrap<T> on AsyncValue<T> {
  T unwrap([T? defaultValue]) {
    return maybeWhen(data: (data) => data, orElse: () => defaultValue!);
  }
}
