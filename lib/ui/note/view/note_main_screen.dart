import 'package:flutter/material.dart';
import 'package:money_record_note/widget/main_bottom_navigation_bar.dart';

class NoteMainScreen extends StatefulWidget {
  const NoteMainScreen({super.key});

  @override
  State<NoteMainScreen> createState() => _NoteMainScreenState();
}

class _NoteMainScreenState extends State<NoteMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Note Main Screen'),
    );
  }
}
