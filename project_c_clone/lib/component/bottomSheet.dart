import 'package:flutter/material.dart';
import 'package:project_c_clone/color.dart';
import 'package:project_c_clone/component/time.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.white),
        height: MediaQuery.of(context).size.height * 0.6,
        //+키보드 크기
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const Row(
                children: [
                  Time(
                    title: '시작시간',
                    isTime: true,
                  ),
                  Time(
                    title: '마침시간',
                    isTime: true,
                  ),
                ],
              ),
              const Time(title: "내용", isTime: false),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: PRIMARY_COLOR),
                        onPressed: () {},
                        child: const Text(
                            style: TextStyle(color: Colors.white), '저장')),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
