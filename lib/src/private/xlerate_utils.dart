class XlerateUtils {
  static String getMonthName(int index) {
    final list = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    return list[index - 1];
  }
}
