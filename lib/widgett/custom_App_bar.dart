import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// custom app bar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final SystemUiOverlayStyle? systemOverlayStyle;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final bool? centerTitle;

  const CustomAppBar(
      {super.key,
      this.actions,
      this.backgroundColor,
      this.centerTitle = false,
      this.systemOverlayStyle,
      this.title});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
      title: title,
      actions: actions,
);
}
}