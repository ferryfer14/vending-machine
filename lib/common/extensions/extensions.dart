import 'package:intl/intl.dart';

extension NumX on num {
  String toCurrencyFormatted() {
    return 'Rp${NumberFormat("#,##0", "id_ID").format(this)}';
  }
}

extension StringX on String {
  String toCapitalizedFirstLetter() {
    if (isNotEmpty) {
      return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
    }

    return this;
  }

  String truncateWithEllipsis(int maxLength) {
    return (length <= maxLength) ? this : '${substring(0, maxLength)}...';
  }

  String toAppPointFormatted() {
    if (this == '0') {
      return '0';
    }

    RegExp regex = RegExp(r'([.]*0)(?!.*\d)');

    return toString().replaceAll(regex, '');
  }

  String convertDateTimeFormatZ(String? pattern, String dateTimeFormatZ) {
    var dateValue =
        DateFormat("yyyy-MM-ddTHH:mm:ssZ").parseUTC(dateTimeFormatZ);
    String formattedDate =
        DateFormat(pattern ?? "dd-MM-yyyy").format(dateValue);
    return formattedDate;
  }
}

extension DateTimeX on DateTime {
  /// formatted to [EEE, dd MMM yyyy, HH:mm]
  String toStringFormatted([String? pattern]) {
    return DateFormat(pattern ?? 'E, dd MMM yyyy, HH:mm', 'id_ID').format(this);
  }

  /// check if date is today
  bool isSameDate(DateTime other) {
    return day == other.day && month == other.month && year == other.year;
  }
}
