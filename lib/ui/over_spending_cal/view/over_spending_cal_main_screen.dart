import 'package:flutter/material.dart';
import 'package:money_record_note/widget/main_app_bar.dart';
import 'package:money_record_note/widget/main_bottom_navigation_bar.dart';

class OverSpendingCalMainScreen extends StatefulWidget {
  const OverSpendingCalMainScreen({super.key});

  @override
  State<OverSpendingCalMainScreen> createState() => _OverSpendingCalMainScreenState();
}

class _OverSpendingCalMainScreenState extends State<OverSpendingCalMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Text('Over Spending Cal Main Screen'),

    );
  }
}
