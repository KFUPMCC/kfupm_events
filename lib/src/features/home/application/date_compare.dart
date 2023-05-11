bool dateCompare(String date) {
  DateTime inputDate = DateTime.parse(date);
  DateTime todayDate = DateTime.now();
  if (inputDate.year == todayDate.year &&
      inputDate.month == todayDate.month &&
      inputDate.day == todayDate.day) {
    return true;
  } else {
    return false;
  }
}
