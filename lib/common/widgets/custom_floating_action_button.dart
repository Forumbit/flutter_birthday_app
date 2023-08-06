import 'package:birthday_app/common/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFloatingActionButtonWidget extends StatelessWidget {
  const CustomFloatingActionButtonWidget({
    super.key,
    required this.bottomSheetContentWidget,
    required this.mapper,
  });

  final Function bottomSheetContentWidget;
  final Map<String, TextEditingController> mapper;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 32,
      right: 32,
      child: IconButton(
        padding: EdgeInsets.zero,
        iconSize: 84.r,
        onPressed: () {
          final controllers = mapper;
          bottomSheetContentWidget(controllers);
        },
        icon: Image.asset(
          AppImages.add,
        ),
      ),
    );
  }
}
