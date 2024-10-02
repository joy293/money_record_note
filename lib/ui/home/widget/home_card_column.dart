import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({super.key});

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        // 첫번째 줄
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card.outlined(
                child: homeCard(context, title: "애옹"),
                color: Colors.white,
            ),
            SizedBox(width: 8), // 여백
            Card.outlined(
              child: homeCard(context, title: "애옹2"),
              color: Colors.white,
            ),
          ],),
        SizedBox(height: 10,),// 줄 사이 여백
        // 두번쨰 줄
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card.outlined(
              child: homeCard(context, title: "애옹3"),
              color: Colors.white,

            ),
            SizedBox(width: 8), // 여백
            Card.outlined(
              child: homeCard(context, title: "애옹4"),
              color: Colors.white,
            ),],
        ),
      ],
    );
  }
}

Widget homeCard(BuildContext context, {required String title}) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.25,
    width: MediaQuery.of(context).size.width * 0.40,
    child: Center(child: Text(title)),
  );
}