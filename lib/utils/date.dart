import 'package:intl/intl.dart';

String dobFormat(String dob) {
  DateTime parseDate = DateFormat("yyyy-MM-dd'T").parse(dob);
  var outputFormat = DateFormat('MM/dd/yyyy');
  var outputDate = outputFormat.format(parseDate);
  return outputDate;
}

extension DateUtilsExtensions on DateTime {
  DateTime removeTime() => DateTime(year, month, day);
}
