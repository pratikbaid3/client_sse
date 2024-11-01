part of 'flutter_client_sse.dart';

class RetryConfiguration {
  final int? tryCount;
  final bool infinite;

  const RetryConfiguration({this.tryCount, this.infinite = true})
      : assert(!(tryCount == null && !infinite),
            'tryCount must be null if infinite is true');

  RetryConfiguration copyWith({
    int? tryCount,
    bool? infinite,
  }) {
    return RetryConfiguration(
      tryCount: tryCount ?? this.tryCount,
      infinite: infinite ?? this.infinite,
    );
  }

  RetryConfiguration use() {
    if (infinite) {
      return this;
    } else {
      assert(tryCount != null,
          "this should not be null because infinite is false");

      return copyWith(tryCount: tryCount! - 1);
    }
  }
}
