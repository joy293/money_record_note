import 'package:flutter/material.dart';
import 'package:money_record_note/widget/main_app_bar.dart';
import 'package:money_record_note/widget/main_bottom_navigation_bar.dart';

class MyPageMainScreen extends StatefulWidget {
  const MyPageMainScreen({super.key});

  @override
  State<MyPageMainScreen> createState() => _MyPageMainScreenState();
}

class _MyPageMainScreenState extends State<MyPageMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Text('MyPage Main Screen'),

    );
  }
}
