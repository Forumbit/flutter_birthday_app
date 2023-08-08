import 'package:birthday_app/common/app_colors.dart';
import 'package:birthday_app/common/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  final String title;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  final Size preferredSize;
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.chevron_left,
          color: AppColors.secondaryColor,
        ),
      ),
      backgroundColor: Colors.white,
      title: Text(
        widget.title,
        style: AppTextStyles.appBarTitleStyle,
      ),
      centerTitle: true,
    );
  }
}
