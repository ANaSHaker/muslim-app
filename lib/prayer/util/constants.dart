/// Location used for the offline prayer-time calculation.
///
/// Defaults to Cairo. Override at build time, for example:
/// `flutter run --dart-define=PRAYER_LAT=21.4225 --dart-define=PRAYER_LONG=39.8262 --dart-define=PRAYER_TZ=3`
class Constants {
  static final double lat =
      double.parse(const String.fromEnvironment('PRAYER_LAT', defaultValue: '30.0444'));
  static final double long =
      double.parse(const String.fromEnvironment('PRAYER_LONG', defaultValue: '31.2357'));
  static final double timeZone =
      double.parse(const String.fromEnvironment('PRAYER_TZ', defaultValue: '2.0'));
}
