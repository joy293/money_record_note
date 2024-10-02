import 'package:flutter/material.dart';
import 'package:money_record_note/assets/colors/color.dart';
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
        appBar: const MainAppBar(),
        body: const DefaultTabController(
          initialIndex: 1,
          length: 2,
          // 탭바 설정
          child: Column(
            children: [
              TabBar(indicatorSize: TabBarIndicatorSize.tab, tabs: <Widget>[
                Tab(child: Text('목표', style: TextStyle(fontSize: 16))),
                Tab(child: Text('로드맵', style: TextStyle(fontSize: 16))),
              ]),
              Expanded(
                  child: TabBarView(children: <Widget>[
                Center(child: Text('내용')),
                Center(child: Text('내용'))
              ]))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: mainGreen.withOpacity(0.8),
            onPressed: () {

              // FAB 클릭 시 동작

            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
            )));
  }
}
