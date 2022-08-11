import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? height;
  final String title;
  final Color? backgroundColor;
  final bool centerTitle;
  final String? iconLeading;
  final double? elevation;
  final bool implyLeading;
  final Color? textColor;
  final Widget? leading;
  final double textSize;
  final FontWeight? fontWeight;

  CustomAppBar({
    this.fontWeight,
    this.textSize = 17,
    this.height,
    this.title = "",
    this.backgroundColor,
    this.centerTitle = true,
    this.iconLeading,
    this.textColor,
    this.elevation,
    this.implyLeading = false,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      toolbarHeight: height ?? AppBar().preferredSize.height,
      automaticallyImplyLeading: implyLeading,
      elevation: elevation ?? 0.5,
      backgroundColor: backgroundColor ?? Colors.transparent,
      title: Text(title,
          style: TextStyle(
              color: textColor, fontSize: textSize, fontWeight: fontWeight)),
      //  centerTitle: centerTitle,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
