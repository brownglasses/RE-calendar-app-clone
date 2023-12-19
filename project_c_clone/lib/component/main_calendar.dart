import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:project_c_clone/color.dart';

class MainCalendar extends StatelessWidget {
  final OnDaySelected onDaySelected;
  final DateTime selectedDate;
  const MainCalendar(
      {super.key, required this.onDaySelected, required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
        fontSize: 16, fontWeight: FontWeight.w400, color: Dart_GREY_COLOR);
    return TableCalendar(
      onDaySelected: onDaySelected,
      selectedDayPredicate: (date) =>
          date.year == selectedDate.year &&
          date.month == selectedDate.month &&
          date.day == selectedDate.day,
      focusedDay: DateTime.now(),
      firstDay: DateTime(1900, 0, 0),
      lastDay: DateTime(2199, 12, 30),
      headerStyle: const HeaderStyle(
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
        titleCentered: true,
        formatButtonVisible: false,
      ),
      calendarStyle: CalendarStyle(
        isTodayHighlighted: false,
        selectedDecoration: BoxDecoration(
          border: Border.all(color: PRIMARY_COLOR, width: 1.0),
          borderRadius: BorderRadius.circular(10),
          color: LIGHT_GREY_COLOR,
        ),
        selectedTextStyle: textStyle.copyWith(
          color: PRIMARY_COLOR,
        ),
        weekendTextStyle: textStyle.copyWith(color: PRIMARY_COLOR),
        weekendDecoration: BoxDecoration(
            color: LIGHT_GREY_COLOR, borderRadius: BorderRadius.circular(10)),
        defaultTextStyle: textStyle,
        defaultDecoration: BoxDecoration(
            color: LIGHT_GREY_COLOR, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
