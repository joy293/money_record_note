import 'package:flutter/material.dart';
import 'package:money_record_note/widget/main_app_bar.dart';

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
        body: SingleChildScrollView(
          child: Column(
          children: [
            Container(
              color: Colors.blueAccent,
              child: myPageMenu(context),
            ),
            const SizedBox(height: 30),
            Container(
              color: Colors.blueGrey,
              child: myPageMenu(context),
            )
          ],
        )
    ));
  }
}

Widget myPageMenu(BuildContext context) {
  final items = [
    '회원 정보',
    '메뉴 1',
    '메뉴 2',
    '메뉴 3',
    '메뉴 4',
    '메뉴 5',
    '메뉴 6',
  ];

  // 각 타일마다 구분선이 추가된 리스트 타일
  return ListView.separated(
      // 리스트 내부에서 스크롤 되지 않게 함
      physics: const NeverScrollableScrollPhysics(),
      // 생성할 타일 개수
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          tileColor: Colors.white,
          // 작은 타일을 원할 때 true
          // dense: true,
          title: Text(items[index]),
          // 타일 내부의 패딩 조절
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.grey,
          ),
          // 높이를 세밀하게 조정할 때 사용
          visualDensity: const VisualDensity(vertical: -3.0 ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          color: Colors.grey,
          thickness: 0.5,
          indent: 16, // 구분선 왼쪽 여백
          endIndent: 16, // 구분선 오른쪽 여백
        );
      },
    // ListView가 Column의 공간을 모두 차지하지 않도록 함
    shrinkWrap: true,

      );
}
