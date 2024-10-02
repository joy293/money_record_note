import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:money_record_note/assets/colors/color.dart';
import 'package:money_record_note/dependencies.dart';
import 'package:money_record_note/widget/main_bottom_navigation_bar.dart';

// Logger 전역 인스턴스 선언
final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 2, // 스택 트레이스의 깊이
    errorMethodCount: 8, // 에러의 깊이
    lineLength: 120, // 각 라인의 최대 길이
    colors: true, // 색상 사용 여부
  ),
);


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
    return SafeArea(
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightMode,
          darkTheme: darkMode,
          home: MainBottomNavigationBar(),
            ));
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
      scaffoldBackgroundColor: Colors.white10);

  // 공통 설정
  // appBar
  AppBarTheme appBarTheme = AppBarTheme(
    color: Colors.white,
    toolbarHeight: kToolbarHeight
  );
  TextTheme textTheme = TextTheme(
    bodyLarge: TextStyle(fontSize: 32, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 16, color: Colors.black)
  );
}
