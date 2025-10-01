import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime{
  String get getMonthName{
    DateFormat formatter = DateFormat("MMM");
    return formatter.format(this );

  }

  String get getDay{
    return day.toString();
  }

  String get toFormattedDate{

  return DateFormat("dd-MM-yyyy").format(this);
  }


  String get toFormattedTime{
    return DateFormat("hh:mm").format(this);
}
}