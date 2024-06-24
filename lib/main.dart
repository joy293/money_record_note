import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_record_note/assets/colors/color.dart';
import 'package:money_record_note/dependencies.dart';
import 'package:money_record_note/widget/main_bottom_navigation_bar.dart';

void main() {
  runApp(MoneyRecordNote());


  // 의존성
  setupDependencies();
}

class MoneyRecordNote extends StatefulWidget {
  const MoneyRecordNote({super.key});

  @override
  State<MoneyRecordNote> createState() => _MoneyRecordNoteState();
}

class _MoneyRecordNoteState extends State<MoneyRecordNote> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
      GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: mainPeach,
        brightness: Brightness.light),
        useMaterial3: true,
      ),
      home: MainBottomNavigationBar(),
      )
    );
  }

  // Name을 지정하여 페이지 이동
  // getPages: [
  // GetPage(name: '/join', page: () => LoginJoin()),
  // GetPage(name: '/login', page: () => LoginMain()),
  // ]
}
