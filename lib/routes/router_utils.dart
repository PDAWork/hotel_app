enum Pages {
  hotel,
  nomer,
  reservation,
  pay,
  error,
}

extension AppPageExtension on Pages {
  String get screenPath {
    return switch (this) {
      Pages.hotel => '/',
      Pages.nomer => 'nomer',
      Pages.reservation => 'reservation',
      Pages.pay => 'pay',
      Pages.error => '/error',
    };
  }

  String get screenName {
    return switch (this) {
      Pages.hotel => 'HOTEL',
      Pages.nomer => 'NOMER',
      Pages.reservation => 'RESERVATION',
      Pages.pay => 'PAY',
      Pages.error => 'ERROR',
    };
  }
}
