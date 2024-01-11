enum Pages {
  otel,
  nomer,
  reservation,
  pay,
  error,
}

extension AppPageExtension on Pages {
  String get screenPath {
    return switch (this) {
      Pages.otel => '/',
      Pages.nomer => 'nomer/:title',
      Pages.reservation => '/reservation',
      Pages.pay => '/pay',
      Pages.error => '/error',
    };
  }

  String get screenName {
    return switch (this) {
      Pages.otel => 'OTEL',
      Pages.nomer => 'NOMER',
      Pages.reservation => 'RESERVATION',
      Pages.pay => 'PAY',
      Pages.error => 'ERROR',
    };
  }
}
