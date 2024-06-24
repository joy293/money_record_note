import 'package:flutter/material.dart';
import 'package:money_record_note/widget/main_app_bar.dart';

class WishMainScreen extends StatefulWidget {
  const WishMainScreen({super.key});

  @override
  State<WishMainScreen> createState() => _WishMainScreenState();
}

class _WishMainScreenState extends State<WishMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Text('Wish Main Screen'),
    );
  }
}
