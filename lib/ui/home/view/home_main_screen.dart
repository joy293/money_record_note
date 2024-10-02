import 'package:flutter/material.dart';
import 'package:money_record_note/assets/colors/color.dart';
import 'package:money_record_note/ui/home/widget/home_card_column.dart';
import 'package:money_record_note/ui/home/widget/money_record_chart.dart';
import 'package:money_record_note/widget/main_app_bar.dart';
import 'package:money_record_note/widget/main_bottom_navigation_bar.dart';
import 'package:money_record_note/widget/main_drawer.dart';

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
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          children: [
            // 잔고 차트
            MoneyRecordChart(),
            // 카드 섹션 타이틀
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.only(left: 4),
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width * 0.85,
                height: 20,
                child: Text("내가 설정한 목표", style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            // 카드
            HomeCard(),
          ],
       ),
      )
    );
  }
}

// Widget sectionTitle() {
//   return Align(
//     alignment: AlignmentDirectional.centerStart,
//     child: Container(
//       color: Colors.cyan,
//       height: 20,
//       child: Text('카드뷰 목록'),
//     ),
//   );
// }