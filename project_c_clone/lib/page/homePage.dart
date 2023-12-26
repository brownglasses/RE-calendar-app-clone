import 'package:flutter/material.dart';
import 'package:project_c_clone/component/bottomSheet.dart';
import 'package:project_c_clone/component/main_calendar.dart';
import 'package:project_c_clone/color.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime selectedDate = DateTime.utc(
      DateTime.now().year, DateTime.now().month, DateTime.now().day);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const CustomBottomSheet();
            },
          );
        },
        backgroundColor: PRIMARY_COLOR,
        shape: const CircleBorder(),
        child: const Text(
          "+",
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            MainCalendar(
              selectedDate: selectedDate,
              onDaySelected: onDaySelected,
            ),
          ],
        ),
      ),
    );
  }

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      selectedDate = selectedDay;
    });
  }
}
//utc 가 무엇인지 모르겠다.
//click 했을 때 selectedDay 이 선택된 날짜의 DateTime 을 얻어오는지 모르겠다.
//