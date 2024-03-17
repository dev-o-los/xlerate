class XlerateUtils {
  static String getMonthName(int index) {
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
    return list[index - 1];
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
