import 'package:flutter/material.dart';
import 'package:project_c_clone/color.dart';

class Time extends StatelessWidget {
  const Time({super.key, required this.title, required this.isTime});
  final String title;
  final bool isTime;
  @override
  Widget build(BuildContext context) {
    InputDecoration inputDecoration = const InputDecoration(
      border: InputBorder.none,
    );
    TextStyle textStyle = const TextStyle(
      color: PRIMARY_COLOR,
      fontWeight: FontWeight.w600,
      fontSize: 15,
    );
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: textStyle,
            ),
            Expanded(
              flex: isTime ? 0 : 1,
              child: Container(
                decoration: BoxDecoration(color: LIGHT_GREY_COLOR),
                child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: TextFormField(
                      decoration: inputDecoration,
                      keyboardType: isTime
                          ? TextInputType.datetime
                          : TextInputType.multiline,
                      expands: !isTime,
                      maxLines: isTime ? 1 : null,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
