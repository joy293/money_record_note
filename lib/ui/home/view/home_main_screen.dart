import 'package:flutter/material.dart';
import 'package:money_record_note/ui/home/widget/money_record_chart.dart';
import 'package:money_record_note/widget/main_app_bar.dart';
import 'package:money_record_note/widget/main_bottom_navigation_bar.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({super.key});

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: MoneyRecordChart(),
      // body: Text('Home Main Screen'),
    );
  }
}
