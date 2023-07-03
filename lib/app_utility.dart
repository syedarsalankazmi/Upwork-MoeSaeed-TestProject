class AppUtility {
  static String dateToDMHM(DateTime? dateTime) {
    if (dateTime != null) {
      final day = dateTime.day.toString().padLeft(2, '0');
      final month = dateTime.month.toString().padLeft(2, '0');
      final hour = dateTime.hour.toString().padLeft(2, '0');
      final minute = dateTime.minute.toString().padLeft(2, '0');

      return '$day/$month, ${hour}:${minute}';
    } else {
      return "-";
    }
  }
}
