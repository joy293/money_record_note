import 'package:flutter/material.dart';
import 'package:money_record_note/assets/colors/color.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  State<MainAppBar> createState() => _MainAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: Center(
          child: Icon(Icons.menu, color: mainGreen,
          )),
      actions: [
        IconButton(
            onPressed: () {  },
            icon: Icon(Icons.notifications_none,
              color: mainGreen)
        )
      ],
    );
  }
}
