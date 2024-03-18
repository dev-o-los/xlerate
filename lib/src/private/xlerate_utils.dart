class XlerateUtils {
  static String getMonthName(int index, {int? clipMthLength}) {
    final list = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    return list[index - 1].substring(0, clipMthLength);
  }

  static String getDayName(int index) {
    final days = [
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
      "Sunday"
    ];

    return days[index - 1];
  }
}
