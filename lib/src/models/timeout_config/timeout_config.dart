class TimeoutConfig {
  final Duration connectTimeout;
  final Duration sendTimeout;
  final Duration receiveTimeout;

  const TimeoutConfig({
    this.connectTimeout = const Duration(seconds: 10),
    this.sendTimeout = const Duration(seconds: 30),
    this.receiveTimeout = const Duration(seconds: 30),
  });

  static const TimeoutConfig apiDefault = TimeoutConfig(
    connectTimeout: Duration(seconds: 10),
    receiveTimeout: Duration(seconds: 30),
  );

  static const TimeoutConfig fileTransfer = TimeoutConfig(
    connectTimeout: Duration(seconds: 15),
    sendTimeout: Duration(minutes: 2),
    receiveTimeout: Duration(minutes: 5),
  );

  String debug() {
    return 'TimeoutConfig(connectTimeout: $connectTimeout, sendTimeout: $sendTimeout, receiveTimeout: $receiveTimeout)';
  }
}
