import 'package:flutter/material.dart';
import 'package:money_record_note/widget/main_app_bar.dart';

class NoteMainScreen extends StatefulWidget {
  const NoteMainScreen({super.key});

  @override
  State<NoteMainScreen> createState() => _NoteMainScreenState();
}

class _NoteMainScreenState extends State<NoteMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Text('월별 잔고 메모 또는 기억해야 할 소비메모 추가하는 화면'),
    );
  }
}
