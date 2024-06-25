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
      theme: lightMode,
      // darkTheme: darkMode,
      home: MainBottomNavigationBar(),
      )
    );
  }

  // 라이트 테마
  ThemeData lightMode = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: mainGreen),
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white
  );

  // 다크 테마
  ThemeData darkMode = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: mainGreen),
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white10
  );

  // Name을 지정하여 페이지 이동
  // getPages: [
  // GetPage(name: '/join', page: () => LoginJoin()),
  // GetPage(name: '/login', page: () => LoginMain()),
  // ]
}
