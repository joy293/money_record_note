import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:get/get.dart';
import 'package:money_record_note/assets/colors/color.dart';
import 'package:money_record_note/ui/home/view/home_main_screen.dart';
import 'package:money_record_note/ui/mypage/view/mypage_main_screen.dart';
import 'package:money_record_note/ui/note/view/note_main_screen.dart';
import 'package:money_record_note/ui/over_spending_cal/view/over_spending_cal_main_screen.dart';
import 'package:money_record_note/ui/wish/view/wish_main_screen.dart';

class Controller extends GetxController {
  var tabIndex = 3.obs;
}

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({super.key});

  @override
  State<MainBottomNavigationBar> createState() =>
      _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  final Controller bottomNavigationBarController =
      Get.find<Controller>();

  @override
  void initState() {
    bottomNavigationBarController.tabIndex = 3.obs;
    super.initState();
  }

  final List<Widget> pages = [
    // 메모 기록 화면
    NoteMainScreen(),
    // 목표 추가 화면
    WishMainScreen(),
    // 홈 화면
    HomeMainScreen(),
    // 과소비 계산기 화면
    OverSpendingCalMainScreen(),
    // 마이 페이지 화면
    MyPageMainScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
          // 현재 선택된 페이지 표시
          body: pages[bottomNavigationBarController.tabIndex.value],
          bottomNavigationBar: SnakeNavigationBar.color(
            snakeShape: SnakeShape.circle,
            backgroundColor: Colors.transparent,
            shape: LinearBorder.bottom(),
            snakeViewColor: Colors.green.shade50,
            selectedItemColor: mainGreen,
            unselectedItemColor: Colors.grey, // 미선택 아이콘
            showUnselectedLabels: false,
            showSelectedLabels: false,
            currentIndex: bottomNavigationBarController.tabIndex.value,
            onTap: (index) => setState(
                () => bottomNavigationBarController.tabIndex.value = index),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_chart), label: 'wallet'),
              BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'wish'),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calculate), label: 'cal'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'setting')
            ],
          ));
    });
  }
}
